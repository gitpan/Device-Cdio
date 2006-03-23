package Device::Cdio::ISO9660;
require 5.8.6;
#
#    $Id: ISO9660.pm,v 1.9 2006/03/14 11:43:50 rocky Exp $
#
#    Copyright (C) 2006 Rocky Bernstein <rocky@cpan.org>
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
#    02110-1301 USA.
#

=pod

=head1 NAME

Device::Cdio::ISO9660 - Module for ISO 9660 handling

=head1 SYNOPSIS

This encapsulates IS9660 filesystem handling. This library however
needs to be used in conjunction with L<Device::Cdio>,
L<Device::Cdio::ISO9660::IFS> and L<Device::Cdio::ISO::FS>.

    use Device::Cdio::ISO9660;
    $name = Device::Cdio::ISO9660::name_translate('COPYING.;1');
    $bool = Device::Cdio::ISO9660::is_achar('A');

=head1 DESCRIPTION

This is an Object-Oriented Perl interface to the GNU CD Input and
Control library's ISO 9660 library, C<libiso9660>. 

Encapsulation is done in two parts. The lower-level Perl interface is
called L<perliso9660> and is generated by SWIG.

The more object-oriented package Device::Cdio::ISO9660 and uses
C<perliso9660>. Actually, there are no objects in
Device::Cdio::ISO9660, but there are in its sub packages
L<Device::Cdio::ISO9660::IFS>, L<Device::Cdio::ISO9660::FS> (and in the
future Device::Cdio::ISO9660::PVD).

Although C<perliso9660> is perfectly usable on its own, it is expected
that these module and classes are what most people will use. As
perliso9660 more closely models the C interface, it is conceivable (if
unlikely) that die-hard C<libiso9660> C users who are very familiar with
that interface could prefer that.

=head2 CALLING ROUTINES

Routines accept named parameters as well as positional parameters.
For named parameters, each argument name is preceded by a dash. For
example:

    Device::Cdio::ISO9660::is_achar(-achar=>'M')

Each argument name is preceded by a dash.  Neither case nor order
matters in the argument list.  -achar, -AChar, and -ACHAR
are all acceptable.  In fact, only the first argument needs to begin
with a dash.  If a dash is present in the first argument, we assume
dashes for the subsequent parameters.

In the documentation below and elsewhere in this package the parameter
name that can be used in this style of call is given in the parameter
list. For example, for "close tray the documentation below reads:

   close_tray(drive=undef, driver_id=$perlcdio::DRIVER_UNKNOWN) 
    -> ($drc, $driver_id)

So the parameter names are "drive", and "driver_id". Neither parameter
is required. If "drive" is not specified, a value of "undef" will be
used. And if "driver_id" is not specified, a value of
$perlcdio::DRIVER_UNKNOWN is used.

The older, more traditional style of positional parameters is also
supported. So the "have_driver example from above can also be written:

    Cdio::have_driver('GNU/Linux')

Finally, since no parameter name can be confused with a an integer,
negative values will not get confused as a named parameter.

=cut

$revision = '$Id: ISO9660.pm,v 1.9 2006/03/14 11:43:50 rocky Exp $';

$Device::Cdio::ISO9660::VERSION = $Device::Cdio::VERSION;

use warnings;
use strict;
use perliso9660;
use Carp;

use vars qw($VERSION $revision @EXPORT_OK @EXPORT @ISA %drivers);
use Device::Cdio::Util qw( _check_arg_count _extra_args _rearrange );

@ISA = qw(Exporter);
@EXPORT    = qw( dirname_valid_p is_achar is_dchar pathame_valid_p 
		 name_translate strncpy_pad %check );

%Device::Cdio::ISO9660::check = (
    'nocheck'   => $perliso9660::NOCHECK,
    '7bit'      => $perliso9660::SEVEN_BIT,
    'achars'    => $perliso9660::ACHARS,
    'dchars'    => $perliso9660::DCHARS
    );

# Note: the keys below match those the names returned by
# cdio_get_driver_name()

=pod

=head1 SUBROUTINES

=head2 dirname_valid_p

dirname_valid_p(path)->bool

Check that path is a valid ISO-9660 directory name.

A valid directory name should not start out with a slash (/), 
dot (.) or null byte, should be less than 37 characters long, 
have no more than 8 characters in a directory component 
which is separated by a /, and consist of only DCHARs. 

True is returned if path is valid.

=cut

sub dirname_valid_p {
    my (@p) = @_;
    my($path, @args) = _rearrange(['PATH'], @p);
    return 0 if _extra_args(@args);
    return perliso9660::dirname_valid($path);
}

=pod

=head2 is_achar

is_dchar(achar)->bool

Return 1 if $achar is an ACHAR. $achar should either be a string of 
length one or the ord() of a string of length 1.

These are the DCHAR's plus some ASCII symbols including the space 
symbol.   

=cut 

sub is_achar {
    my (@p) = @_;
    my($achar, @args) = _rearrange(['ACHAR'], @p);
    return 0 if _extra_args(@args);
    return 0 if !defined($achar);
    if ($achar !~ m{\A\d+\Z}) {
	# Not integer. Should be a string of length one then.
        # We'll turn it into an integer.
	return 0 if length($achar) != 1;
	$achar = ord($achar);
    } else {
	# Is an integer. Is it too large?
	return 0 if $achar > 255;
    }
    return perlis9660::is_achar($achar);
}

=pod

=head2 is_dchar

is_dchar(dchar)->bool

Return 1 if $dchar is a DCHAR - a character that can appear in an an
ISO-9600 level 1 directory name. These are the ASCII capital
letters A-Z, the digits 0-9 and an underscore.

$dchar should either be a string of length one or the ord() of a string
of length 1.

=cut 

sub is_dchar {
    my (@p) = @_;
    my($dchar, @args) = _rearrange(['DCHAR'], @p);
    return 0 if _extra_args(@args);
    if ($dchar !~ m{\A\d+\Z}) {
	# Not integer. Should be a string of length one then.
        # We'll turn it into an integer.
	return 0 if length($dchar) != 1;
	$dchar = ord($dchar);
    } else {
	# Is an integer. Is it too large?
	return 0 if $dchar > 255;
    }
    return perliso9660::is_dchar($dchar);
}

=pod

=head2 pathname_valid_p

pathname_valid_p(path)->bool

Check that path is a valid ISO-9660 pathname.  

A valid pathname contains a valid directory name, if one appears and
the filename portion should be no more than 8 characters for the
file prefix and 3 characters in the extension (or portion after a
dot). There should be exactly one dot somewhere in the filename
portion and the filename should be composed of only DCHARs.
  
1 is returned if path is valid.

=cut

sub pathname_valid_p {
    my (@p) = @_;
    my($path, @args) = _rearrange(['PATH'], @p);
    return 0 if _extra_args(@args);
    return perliso9660::pathame_valid($path);
}


=pod

=head2 name_translate

name_translate(name, joliet_level=0)->str

Convert an ISO-9660 file name of the kind that is that stored in a ISO
9660 directory entry into what's usually listed as the file name in a
listing.  Lowercase name if no Joliet Extension interpretation. Remove
trailing ;1's or .;1's and turn the other ;'s into version numbers.

If joliet_level is not given it is 0 which means use no Joliet
Extensions. Otherwise use the specified the Joliet level. 

The translated string is returned and it will be larger than the input
filename.

=cut

sub name_translate {
    my(@p) = @_;
    my($filename, $joliet_level) = 
	_rearrange(['FILENAME', 'JOLIET_LEVEL'], @p);
    
    $joliet_level = 0 if !defined($joliet_level);
    if (!defined($filename)) {
      print "*** An ISO-9660 file name entry must be given\n";
      return undef;
    }
    return perliso9660::name_translate_ext($filename, $joliet_level);
}

=pod

=head2 stat_array_to_href

stat_array_to_href(values)->href

Convert a ISO 9660 array to an hash reference of the values.

Used internally in convert from C code.

Note, we modify the input parameter.

=cut

sub stat_array_to_href {
    my $href = {};
    $href->{filename} = shift @_; return $href if !@_;
    $href->{LSN}      = shift @_; return $href if !@_;
    $href->{size}     = shift @_; return $href if !@_;
    $href->{sec_size} = shift @_; return $href if !@_;
    $href->{is_dir}   = shift @_; 

    # A string comparison is more robust than a numeric comparison.
    # and some Perl interpreters seem to get a string 2 back from SWIG.
    $href->{is_dir}   = $href->{is_dir} eq '2';
    return $href;
}
 
=pod

=head2 strncpy_pad

strncpy_pad(name, len, check='nocheck')->str

Pad string I<name> with spaces to size len and return this. If len is
less than the length of I<name>, the return value will be truncated to
the first I<len> characters of I<name>.

I<name> can also be scanned to see if it contains only ACHARs, DCHARs,
or 7-bit ASCII chars, and this is specified via the I<check> parameter. 
If the I<check> parameter is given it must be one of the 'nocheck',
'7bit', 'achars' or 'dchars'. Case is not significant. 

=cut

sub strncpy_pad {
    my (@p) = @_;
    my($name, $len, $check_key, @args) = 
	_rearrange(['NAME', 'LEN', 'CHECK'], @p);
    return 0 if _extra_args(@args);
    if (!defined($name)) {
      print "*** A NAME parameter is expected\n";
      return undef;
    }
    if (!defined($len)) {
      print "*** A LEN parameter is expected\n";
      return undef;
    }

    $check_key = 'nocheck' if !defined($check_key);

    $check_key = lc($check_key);
    if (not exists $Device::Cdio::ISO9660::check{$check_key}) {
      printf "*** A CHECK parameter must be one of %s\n", 
      join(', ', keys %Device::Cdio::ISO9660::check);
      return undef;
    }

    return perliso9660::strncpy_pad($name, $len, 
				    $Device::Cdio::ISO9660::check{$check_key});
}
 
1; # Magic true value requred at the end of a module

__END__

=pod

=head1 SEE ALSO

L<Device::Cdio::ISO9660::IFS> is the ISO 96600 filesystem image interface.
L<Device::Cdio::ISO9660::FS> is the ISO 96600 CD-image interface.
L<Device::Cdio> has general information on the CD Input and Control
Library. L<Device::Cdio::Device> is for device objects and
L<Device::Cdio::Track> is for track objects.

L<perliso9660> is the lower-level interface to libcdio.

L<http://www.gnu.org/software/libcdio> has documentation on
libcdio including the a manual and the API via doxygen.

=head1 AUTHORS

Rocky Bernstein C<< <rocky at cpan.org> >>.

=head1 COPYRIGHT

Copyright (C) 2006 Rocky Bernstein <rocky@cpan.org>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

=cut
