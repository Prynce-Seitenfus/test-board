#!/bin/bash

# Disable echo for cleaner output
set +x

# Set the path for STM32CubeIDE
CUBEIDE_PATH="/opt/st/stm32cubeide_1.18.1"
export PATH="$CUBEIDE_PATH:$PATH"

# Define the workspace and project
WORKSPACE=$PWD/..
PROJECT="test-board"
CONFIG="Debug" # "Release" or "Debug"

# Use stm32cubeidec to build the project in the specified workspace
HEADLESS="--launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild"
export XDG_RUNTIME_DIR=/tmp
xvfb-run "$CUBEIDE_PATH/stm32cubeide" -data "$WORKSPACE" $HEADLESS -import "$WORKSPACE/$PROJECT"
xvfb-run "$CUBEIDE_PATH/stm32cubeide" -data "$WORKSPACE" $HEADLESS -build "$PROJECT/$CONFIG"

# Restore the original PATH (optional, if needed)
unset CUBEIDE_PATH