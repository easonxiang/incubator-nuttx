############################################################################
# fs/CMakeLists.txt
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
nuttx_add_kernel_library(fs fs_initialize.c)

add_subdirectory(aio)
add_subdirectory(binfs)
add_subdirectory(cromfs)
add_subdirectory(dirent)
add_subdirectory(driver)
add_subdirectory(fat)
add_subdirectory(hostfs)
add_subdirectory(inode)
add_subdirectory(littlefs)
add_subdirectory(mmap)
add_subdirectory(mount)
add_subdirectory(mqueue)
add_subdirectory(nfs)
add_subdirectory(nxffs)
add_subdirectory(partition)
add_subdirectory(procfs)
add_subdirectory(romfs)
add_subdirectory(rpmsgfs)
add_subdirectory(semaphore)
add_subdirectory(shm)
add_subdirectory(smartfs)
add_subdirectory(socket)
add_subdirectory(spiffs)
add_subdirectory(tmpfs)
add_subdirectory(unionfs)
add_subdirectory(userfs)
add_subdirectory(vfs)

target_include_directories(fs PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
