#!/usr/bin/perl
# $Id: Makefile.PL,v 1.2 2006/02/08 13:42:39 rocky Exp $
use Module::Build::Compat;
Module::Build::Compat->run_build_pl(args => \@ARGV);
Module::Build::Compat->write_makefile();
