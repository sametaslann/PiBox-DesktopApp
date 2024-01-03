cmake_minimum_required(VERSION 3.21.1)

option(LINK_INSIGHT "Link Qt Insight Tracker library" ON)
option(BUILD_QDS_COMPONENTS "Build design studio components" ON)

project(PiBoxApp LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)


find_package(Qt6 6.2 REQUIRED COMPONENTS Core Gui Qml Quick Network Widgets 3DRender 3DExtras)


if (Qt6_VERSION VERSION_GREATER_EQUAL 6.3)
    qt_standard_project_setup()
endif()

qt_add_executable(PiBoxApp src/main.cpp
    ludocontroller.h ludocontroller.cpp
    socket.h socket.cpp
    okeycontroller.h okeycontroller.cpp
    okeyworker.h okeyworker.cpp

    ludoworker.h ludoworker.cpp)


qt_add_resources(PiBoxApp "configuration"
    PREFIX "/"
    FILES
        qtquickcontrols2.conf
)

target_link_libraries(PiBoxApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
    Qt6::Network

    Qt6::Widgets
    Qt6::3DRender
    Qt6::3DExtras

)

if (BUILD_QDS_COMPONENTS)
    include(${CMAKE_CURRENT_SOURCE_DIR}/qmlcomponents)
endif()

include(${CMAKE_CURRENT_SOURCE_DIR}/qmlmodules)

if (LINK_INSIGHT)
    include(${CMAKE_CURRENT_SOURCE_DIR}/insight)
endif ()

include(GNUInstallDirs)
install(TARGETS PiBoxApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
