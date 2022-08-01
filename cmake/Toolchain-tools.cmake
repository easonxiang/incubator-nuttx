############################################################################
# cmake/Toolchain-tools.cmake
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

set(CMAKE_FIND_ROOT_PATH get_file_component(${CMAKE_C_COMPILER} PATH))
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# REQUIRED OS tools
#foreach(tool grep genromfs make)
#  string(TOUPPER ${tool} TOOL)
#  find_program(${TOOL} ${tool} REQUIRED)
#endforeach()

# OPTIONAL tools
#foreach(tool srec_cat)
#  string(TOUPPER ${tool} TOOL)
#  find_program(${TOOL} ${tool})
#endforeach()

## optional compiler tools
#foreach(tool gdb gdbtui)
# string(TOUPPER ${tool} TOOL)
# find_program(${TOOL} arm-none-eabi-${tool})
#endforeach()
