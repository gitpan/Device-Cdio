#!/usr/bin/perl -w
# $Id: 10.read.t,v 1.2 2006/02/10 17:16:59 rocky Exp $

# Test functioning of read routines

use strict;

BEGIN {
    chdir 't' if -d 't';
}
use lib '../lib';
use blib;

use Device::Cdio::Device;
use Test::Simple tests => 6;

my $cuefile="../data/isofs-m1.cue";
my $device = Device::Cdio::Device->new(-source=>$cuefile);

# Read the ISO Primary Volume descriptor

my($data, $size, $drc) = 
    $device->read_sectors(16, $perlcdio::READ_MODE_M1F1);

ok(substr($data, 1, 5) eq 'CD001' 
   && $perlcdio::M2RAW_SECTOR_SIZE == length($data),
   "Mode 1 Format 1 reading");

ok(substr($data, 2328, 2) eq "\0\0", "Mode 1 Format 1 reading - null bytes");

my $data2 = $device->read_sectors(16, $perlcdio::READ_MODE_M1F1, 1);
ok($data2 eq $data, "Mode 1 reading with block parameter");

my $data3 = $device->read_data_blocks(16, 1);
ok($data2 eq $data, "Mode 1 reading matches data reading (block parameter)");

($data, $size, $drc) = $device->read_data_blocks(26);
ok(substr($data, 6, 26) eq 'GNU GENERAL PUBLIC LICENSE');
ok($size == $perlcdio::ISO_BLOCKSIZE);
