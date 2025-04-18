cmake_minimum_required( VERSION 3.15)

project( mulle-menu VERSION 0.3.1 LANGUAGES NONE)

execute_process( COMMAND ./mulle-menu --version
                 WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
                 OUTPUT_VARIABLE MULLE_MENU_VERSION
                 OUTPUT_STRIP_TRAILING_WHITESPACE)
message( STATUS "MULLE_MENU_VERSION is ${MULLE_MENU_VERSION} according to mulle-menu")


set( PROJECT_VERSION "${MULLE_MENU_VERSION}")


set( SCRIPTS
mulle-menu
)


INSTALL( FILES ${SCRIPTS}
PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
            GROUP_EXECUTE GROUP_READ
            WORLD_EXECUTE WORLD_READ
DESTINATION "bin")



######
#
# must be after CPACK_PACKAGE_VERSION
include( CMakePackage.cmake)
include( CPack)
