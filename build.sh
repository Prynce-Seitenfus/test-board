#!/bin/bash

# Set the project path
PROJECT_PATH=$(pwd)/test-board

# Set the STM32CubeIDE executable path
STM32CUBEIDE_EXECUTABLE=/opt/st/stm32cubeide_1.18.1

# Set the build configuration (e.g. Debug or Release)
BUILD_CONFIGURATION=Debug

# Build the project using STM32CubeIDE in headless mode
$STM32CUBEIDE_EXECUTABLE --launcher.openFile $PROJECT_PATH --launcher.appendVmargs -data $PROJECT_PATH/.metadata --launcher.buildConfig $BUILD_CONFIGURATION

echo "Build completed!"