#!/usr/bin/perl -w
#$Id: drives.pl,v 1.2 2006/02/10 13:39:24 rocky Exp $
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
#    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

# Program to read CD blocks. See read-cd from the libcdio distribution
# for a more complete program.

use strict;

BEGIN {
    chdir 'example' if -d 'example';
    use lib '../lib';
    eval "use blib";  # if we fail keep going - maybe we have installed Cdio
}

use Device::Cdio;
use Device::Cdio::Device;
use Device::Cdio::Track;

use vars qw($0 $program $pause %opts);

my $vcid ='$Id: drives.pl,v 1.2 2006/02/10 13:39:24 rocky Exp $';

sub print_drive_class($$$) {
    my ($msg, $bitmask, $any) = @_;
    my @cd_drives = Device::Cdio::get_devices_with_cap($bitmask, $any);

    print "$msg...\n";
    foreach my $drive (@cd_drives) {
	print "Drive $drive\n";
    }
    print "-----\n";
}

my @cd_drives = Device::Cdio::get_devices($perlcdio::DRIVER_DEVICE);
foreach my $drive (@cd_drives) {
    print "Drive $drive\n";
}

print "-----\n";

print_drive_class("All CD-ROM drives (again)", $perlcdio::FS_MATCH_ALL, 0);
print_drive_class("All CD-DA drives...", $perlcdio::FS_AUDIO, 0);
print_drive_class("All drives with ISO 9660...", $perlcdio::FS_ISO_9660, 0);
print_drive_class("VCD drives...", 
		  ($perlcdio::FS_ANAL_SVCD|$perlcdio::FS_ANAL_CVD|
		   $perlcdio::FS_ANAL_VIDEOCD|$perlcdio::FS_UNKNOWN), 1);



