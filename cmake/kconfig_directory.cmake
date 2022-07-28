############################################################################
# cmake/kconfig_directory.cmake
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

function(nuttx_generate_kconfig)
  nuttx_parse_function_args(
    FUNC nuttx_generate_kconfig
    ONE_VALUE MENUDESC
    REQUIRED ARGN ${ARGN}
  )
  if (EXISTS "${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt")
    if (NOT EXISTS "${NUTTX_APPS_BINDIR}/Kconfig")

      set(KCONFIG_OUTPUT_FILE)
      if (MENUDESC)
        string(REPLACE "/" "_" KCONFIG_PREFIX ${CMAKE_CURRENT_LIST_DIR})
        string(APPEND KCONFIG_OUTPUT_FILE ${NUTTX_APPS_BINDIR} "/" ${KCONFIG_PREFIX} "_Kconfig")
        file(WRITE ${KCONFIG_OUTPUT_FILE}  "menu \"${MENUDESC}\"\n")
      else()
        set(KCONFIG_OUTPUT_FILE ${NUTTX_APPS_BINDIR}/Kconfig)
        file(GLOB subdir LIST_DIRECTORIES false ${NUTTX_APPS_BINDIR}
             ${NUTTX_APPS_BINDIR}/*_Kconfig)
        foreach(dir ${subdir})
          file(APPEND ${KCONFIG_OUTPUT_FILE}  "source \"${dir}\"\n")
        endforeach()
      endif()

      file(GLOB subdir LIST_DIRECTORIES false ${CMAKE_CURRENT_LIST_DIR}
           ${CMAKE_CURRENT_LIST_DIR}/*/Kconfig)

      foreach(dir ${subdir})
        file(APPEND ${KCONFIG_OUTPUT_FILE}  "source \"${dir}\"\n")
      endforeach()


      if (MENUDESC)
        file(APPEND ${KCONFIG_OUTPUT_FILE}  "endmenu # ${MENUDESC}\n")
      endif()
    endif()
  endif()

endfunction()
