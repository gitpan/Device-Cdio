#!/usr/bin/perl -T
# $Id: 01.pod-coverage.t,v 1.2 2006/02/09 19:09:21 rocky Exp $

use strict;
BEGIN {
    chdir '..' if ! -d 't';
    push @INC, ('blib/lib', 'blib/arch');
}

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;

all_pod_coverage_ok();

# Don't know how to get this from perlcdio ignored.
#all_pod_coverage_ok(
#		    'perlcdio', 
#		    { also_private => [ qr/this$/ ] },
#		    "perlcdio, 'this' routine"
#		    );
