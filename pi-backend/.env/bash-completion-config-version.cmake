include(GNUInstallDirs)
find_package(bash-completion)
if(BASH_COMPLETION_FOUND)
  message(STATUS
    "Using bash completion dir ${BASH_COMPLETION_COMPLETIONSDIR}")
else()
  set (BASH_COMPLETION_COMPLETIONSDIR "${CMAKE_INSTALL_DATADIR}/bash-completion/completions")
  message (STATUS
    "Using fallback bash completion dir ${BASH_COMPLETION_COMPLETIONSDIR}")
endif()

install(FILES your-completion-file.bash DESTINATION
  ${BASH_COMPLETION_COMPLETIONSDIR})
