
# CUSTOM VERSION
find_program(PATCH_EXECUTABLE patch)
set(PATCH_EXECUTABLE ${PATCH_EXECUTABLE} CACHE STRING "")
if (PATCH_EXECUTABLE)
  message(STATUS "Found patch")
  if (VERBOSE)
    message(STATUS "Path: ${PATCH_EXECUTABLE}")
  endif (VERBOSE)
else (PATCH_EXECUTABLE)
  message(FATAL_ERROR "patch not found")
endif (PATCH_EXECUTABLE)



macro(patch_file_p p baseDir patchFile)
  message(STATUS " ${PATCH_EXECUTABLE} in ${baseDir} applying ${patchFile} with depth ${p}")
  execute_process(COMMAND ${PATCH_EXECUTABLE} -p ${p}  -i "${patchFile}"
                  WORKING_DIRECTORY "${baseDir}"
                  RESULT_VARIABLE   res
                                )
  if(res)
    MESSAGE(FATAL_ERROR "Patch failed")
  endif(res)
endmacro(patch_file_p)


MESSAGE(STATUS "Checking for patches : ")
MACRO(APPLY_PATCH_IF_NEEDED4 markerFile absPatchFile absSubdir description)
  IF(NOT EXISTS "${absSubdir}/${markerFile}")
    #MESSAGE(STATUS "   Patching file in ${subdir} ${description}")
    #MESSAGE(STATUS "      patch_file_p(1::: ${absSubdir} <= ${absPatchFile}")
    MESSAGE(STATUS "patching ${markerFile}  : ${description}")
    patch_file_p(1 "${absSubdir}" "${absPatchFile}")
    file(WRITE "${absSubdir}/${markerFile}" "patched")
  ELSE()
    LIST(APPEND already_patched   "${markerFile} ")
  ENDIF()
ENDMACRO()
#
MACRO(APPLY_PATCH_IF_NEEDED5 markerFile relPath module description)
  APPLY_PATCH_IF_NEEDED4(${markerFile}  ${CMAKE_SOURCE_DIR}/patches/${relPath}                 ${CMAKE_SOURCE_DIR}/deps/${module}   "${description}")
ENDMACRO()


#
APPLY_PATCH_IF_NEEDED5(patched00 picolibc.patch       picolibc          "patch picolibc")



