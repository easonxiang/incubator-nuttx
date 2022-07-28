############################################################################
# libs/libc/stdlib/CMakeLists.txt
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.  The
# ASF licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.
#
############################################################################

set (SRCS
  lib_abs.c lib_abort.c lib_atof.c lib_atoi.c lib_atexit.c
  lib_atol.c lib_atoll.c lib_div.c lib_ldiv.c lib_lldiv.c
  lib_itoa.c lib_labs.c lib_llabs.c lib_realpath.c lib_bsearch.c
  lib_rand.c lib_qsort.c lib_srand.c lib_strtol.c lib_exit.c
  lib_strtoll.c lib_strtoul.c lib_strtoull.c lib_strtod.c lib_strtof.c
  lib_strtold.c lib_checkbase.c lib_mktemp.c lib_mkstemp.c lib_mkdtemp.c)

if (CONFIG_LIBC_WCHAR)
  list(APPEND SRCS
    lib_mblen.c lib_mbtowc.c lib_wctomb.c
    lib_mbstowcs.c lib_wcstombs.c)
endif()

if (CONFIG_PSEUDOTERM_SUSV1)
  list(APPEND SRCS lib_ptsname.c lib_ptsnamer.c)
endif()

if (CONFIG_PSEUDOTERM)
  list(APPEND SRCS lib_unlockpt.c)
endif()

target_sources(c PRIVATE ${SRCS})
