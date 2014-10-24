#!/usr/bin/perl -w
# $Id: 06.bincue.t,v 1.3 2006/02/09 19:09:21 rocky Exp $

#Test functioning of BIN/CUE image routines

use strict;

BEGIN {
    chdir 't' if -d 't';
}
use lib '../lib';
use blib;

use Device::Cdio::Device;
use Test::Simple tests => 13;

my $cuefile="data/cdda.cue";
$cuefile = '../data/cdda.cue' if ! -f $cuefile;
my $device = Device::Cdio::Device->new(-source=>$cuefile);

# Test known values of various access parameters:
# access mode, driver name via string and via driver_id
# and cue name

my $result = $device->get_arg("access-mode");
ok(defined($result) && $result eq 'image', 'get_arg("access_mode")');
$result = $device->get_driver_name();
ok(defined($result) && $result eq 'BIN/CUE', 'get_driver_name');
$result = $device->get_driver_id();
ok($result == $perlcdio::DRIVER_BINCUE, 'get_driver_id');
$result = $device->get_arg("cue");
ok(defined($result) && $result eq $cuefile, 'get_arg("cue")');
# Test getting is_binfile and is_$cuefile
my $binfile = Device::Cdio::is_cuefile($cuefile);
ok(defined($binfile), "is_cuefile($cuefile)");
my $cuefile2 = Device::Cdio::is_binfile($binfile);
# Could check that $cuefile2 == $cuefile, but some OS's may 
# change the case of files
ok(defined($cuefile2), "is_$cuefile(binfile)");
$result = Device::Cdio::is_tocfile($cuefile);
ok(!$result, "is_tocfile(tocfile)");
my ($vendor, $model, $revision, $drc) = $device->get_hwinfo();
## FIXME:
## ok($perlcdio::DRIVER_OP_SUCCESS == $drc, "get_hwinfo ok");
ok(defined($vendor) && 'libcdio' eq $vendor, "get_hwinfo vendor");
ok(defined($model) && 'CDRWIN' eq $model, "get_hwinfo model");
$result = Device::Cdio::is_device($cuefile);
ok(!$result, "is_device(tocfile)");
$result = $device->get_media_changed();
ok(!$result, "bincue: get_media_changed");
if ($perlcdio::VERSION_NUM >= 77) {
    # There's a bug in libcdio 0.76 that causes these to crash
    $drc = $device->set_blocksize(2048);
    ok($perlcdio::DRIVER_OP_UNSUPPORTED == $drc, "set blocksize");
    $drc = $device->set_speed(5);
    ok($perlcdio::DRIVER_OP_UNSUPPORTED == $drc, "set speed");
} else {
    ok(1, "skip set blocksize");
    ok(1, "skip set speed");
}
$device->close();
