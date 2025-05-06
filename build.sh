#!/bin/bash

# Set the project path
PROJECT_PATH=$(pwd)/test-board

# Set the workspace path
WORKSPACE_PATH=$(pwd)

# Set the STM32CubeIDE executable path
STM32CUBEIDE_EXECUTABLE=/opt/st/stm32cubeide_1.18.1/stm32cubeide

# Set the build configuration (e.g. Debug or Release)
BUILD_CONFIGURATION=Debug

# Set the headless build command
HEADLESS=--launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild

# Import the workspace using STM32CubeIDE
$STM32CUBEIDE_EXECUTABLE --launcher.importWorkspace $(pwd)

# Build the project using STM32CubeIDE in headless mode
$STM32CUBEIDE_EXECUTABLE $HEADLESS -build $PROJECT -data $WORKSPACE_PATH
