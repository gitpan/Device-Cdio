#=============================================================
# $Id: Makefile,v 1.4 2006/02/10 13:39:24 rocky Exp $
#=============================================================
# Invariably there will be folks who just haven't gotten with 
# the program. In fact they may never learn. This file is for them. 
BUILD_TARGETS = build clean code config_data diff dist distcheck distclean \
	distdir distmeta distsign disttest docs fakeinstall help html \
	install manifest ppd ppmdis realclean skipcheck test testcover \
	testdb testpod versioninstall

.PHONY: all check $(BUILD_TARGETS)

all: Build
	@echo "We use 'perl Build' here. Don't count on too much, but"
	@echo "I'll try transferring your request."
	perl Build

Build:: Build.PL
	perl Build.PL

dist: all

$(BUILD_TARGETS): Build
	@echo "We use perl Build here. Don't count on too much, but"
	@echo "I'll try transferring your request."
	perl Build $@

check: Build
	perl Build test
.PHONY: ChangeLog

ChangeLog:
	cvs2cl -W 450 --header cvs2cl_header --utc -w -I ChangeLog --usermap cvs2cl_usermap -P 
