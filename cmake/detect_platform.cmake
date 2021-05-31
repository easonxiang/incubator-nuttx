if(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "amd64.*|x86_64.*|AMD64.*")
  message(STATUS "Detected system: x86_64")
  set(X86_64 1)
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i686.*|i386.*|x86.*")
  message(STATUS "Detected system: x86")
  set(X86 1)
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "^(aarch64.*|AARCH64.*|arm64.*|ARM64.*)")
  message(STATUS "Detected system: aarch64")
  set(AARCH64 1)
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "^(arm.*|ARM.*)")
  message(STATUS "Detected system: arm")
  set(ARM 1)
else()
  message(FATAL_ERROR "Unhandled system: ${CMAKE_HOST_SYSTEM_PROCESSOR}")
endif()
