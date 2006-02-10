#!/usr/bin/perl -w
# $Id: 00.load.t,v 1.2 2006/02/09 19:09:21 rocky Exp $

use strict;
BEGIN {
    chdir 't' if -d 't';
}
use lib '../lib';
use blib;

use Test::More tests => 1;

BEGIN {
use_ok( 'Device::Cdio' );
}

diag( "Testing Device::Cdio $Device::Cdio::VERSION" );
