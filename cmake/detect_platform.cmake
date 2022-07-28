############################################################################
# cmake/detect_platform.cmake
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

if (CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "amd64.*|x86_64.*|AMD64.*")
  message(STATUS "Detected system: x86_64")
  set(X86_64 1)
elseif (CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i686.*|i386.*|x86.*")
  message(STATUS "Detected system: x86")
  set(X86 1)
elseif (CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "^(aarch64.*|AARCH64.*|arm64.*|ARM64.*)")
  message(STATUS "Detected system: aarch64")
  set(AARCH64 1)
elseif (CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "^(arm.*|ARM.*)")
  message(STATUS "Detected system: arm")
  set(ARM 1)
else()
  message(FATAL_ERROR "Unhandled system: ${CMAKE_HOST_SYSTEM_PROCESSOR}")
endif()
