############################################################################
# sched/CMakeLists.txt
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
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

nuttx_add_kernel_library(sched)

add_subdirectory(clock)
add_subdirectory(environ)
add_subdirectory(group)
add_subdirectory(init)
add_subdirectory(irq)
add_subdirectory(module)
add_subdirectory(mqueue)
add_subdirectory(paging)
add_subdirectory(pthread)
add_subdirectory(sched)
add_subdirectory(semaphore)
add_subdirectory(signal)
add_subdirectory(task)
add_subdirectory(timer)
add_subdirectory(tls)
add_subdirectory(wdog)
add_subdirectory(wqueue)

target_include_directories(sched INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
