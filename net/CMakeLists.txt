############################################################################
# net/CMakeLists.txt
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

if (CONFIG_NET)
  nuttx_add_kernel_library(net)

  add_subdirectory(arp)
  add_subdirectory(bluetooth)
  add_subdirectory(can)
  add_subdirectory(devif)
  add_subdirectory(icmp)
  add_subdirectory(icmpv6)
  add_subdirectory(ieee802154)
  add_subdirectory(igmp)
  add_subdirectory(inet)
  add_subdirectory(ipforward)
  add_subdirectory(local)
  add_subdirectory(mld)
  add_subdirectory(neighbor)
  add_subdirectory(netdev)
  add_subdirectory(netlink)
  add_subdirectory(pkt)
  add_subdirectory(procfs)
  add_subdirectory(route)
  add_subdirectory(rpmsg)
  add_subdirectory(sixlowpan)
  add_subdirectory(socket)
  add_subdirectory(tcp)
  add_subdirectory(udp)
  add_subdirectory(usrsock)
  add_subdirectory(utils)

  target_sources(net PRIVATE net_initialize.c)
  target_include_directories(net PRIVATE ${CMAKE_CURRENT_LIST_DIR})
endif()
