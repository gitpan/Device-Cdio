#!/usr/bin/perl -w
# $Id: 06.image.t,v 1.2 2006/02/09 19:09:21 rocky Exp $

# Test that we have image drivers

use strict;

BEGIN {
    chdir 't' if -d 't';
}
use lib '../lib';
use blib;

use Device::Cdio::Device;
use Test::Simple tests => 6;

my $result = Device::Cdio::have_driver('CDRDAO');
ok($result, "Have cdrdrao driver via string");
$result = Device::Cdio::have_driver($perlcdio::DRIVER_CDRDAO);
ok($result, "Have cdrdrao driver via driver_id");
$result = Device::Cdio::have_driver('NRG');
ok($result, "Have NRG driver via string");
$result = Device::Cdio::have_driver($perlcdio::DRIVER_NRG);
ok($result, "Have NRG driver via driver_id");
$result = Device::Cdio::have_driver('BIN/CUE');
ok($result, "Have BIN/CUE driver via string");
$result = Device::Cdio::have_driver($perlcdio::DRIVER_BINCUE);
ok($result, "Have BIN/CUE driver via driver_id");

