#
# The contents of this file are subject to the Netscape Public License
# Version 1.1 (the "NPL"); you may not use this file except in
# compliance with the NPL.  You may obtain a copy of the NPL at
# http://www.mozilla.org/NPL/
# 
# Software distributed under the NPL is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the NPL
# for the specific language governing rights and limitations under the
# NPL.
# 
# The Initial Developer of this code under the NPL is Netscape
# Communications Corporation.  Portions created by Netscape are
# Copyright (C) 1998 Netscape Communications Corporation.  All Rights
# Reserved.
#

#
# Config stuff for Compaq OpenVMS
#

include $(MOD_DEPTH)/config/UNIX.mk

ifdef INTERNAL_TOOLS
CC			= c89
CCC			= cxx
OPTIMIZER		= -O
else
CC			= ccc
CCC			= ccc
endif

RANLIB			= /bin/true

CPU_ARCH_TAG		= _$(CPU_ARCH)

OS_CFLAGS		= -DVMS -DGENERIC_PTHREAD_REDEFINES

# The command to build a shared library in POSIX on OpenVMS.
MKSHLIB = vmsld $(OPTIMIZER)
