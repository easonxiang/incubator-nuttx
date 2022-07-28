############################################################################
# drivers/CMakeLists.txt
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

nuttx_add_kernel_library(drivers)

add_subdirectory(1wire)
add_subdirectory(analog)
add_subdirectory(audio)
add_subdirectory(bch)
add_subdirectory(can)
add_subdirectory(clk)
add_subdirectory(contactless)
add_subdirectory(crypto)
add_subdirectory(dummy)
add_subdirectory(eeprom)
add_subdirectory(efuse)
add_subdirectory(i2c)
add_subdirectory(i2s)
add_subdirectory(input)
add_subdirectory(ioexpander)
add_subdirectory(lcd)
add_subdirectory(leds)
add_subdirectory(loop)
add_subdirectory(math)
add_subdirectory(misc)
add_subdirectory(mmcsd)
add_subdirectory(modem)
add_subdirectory(motor)
add_subdirectory(mtd)
add_subdirectory(net)
add_subdirectory(note)
add_subdirectory(pipes)
add_subdirectory(power)
add_subdirectory(rc)
add_subdirectory(rf)
add_subdirectory(rptun)
add_subdirectory(segger)
add_subdirectory(sensors)
add_subdirectory(serial)
add_subdirectory(spi)
add_subdirectory(syslog)
add_subdirectory(timers)
add_subdirectory(usbdev)
add_subdirectory(usbhost)
add_subdirectory(usbmisc)
add_subdirectory(usbmonitor)
add_subdirectory(video)
add_subdirectory(wireless)

target_sources(drivers PRIVATE drivers_initialize.c)
target_include_directories(drivers PRIVATE ${CMAKE_CURRENT_LIST_DIR})
