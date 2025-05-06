@ECHO OFF
@REM By check the headless-build.bat which come along with STM32CubeIDE.
@REM we can invoke the build process without invoking the GUI.

@REM Set PATH for STM32CubeIDE.
SET "CUBEIDE_PATH=C:\ST\STM32CubeIDE_1.18.1\STM32CubeIDE"
SET OLD_PATH=%PATH%
SET PATH=%CUBEIDE_PATH%;%PATH%

@REM Use stm32cubeidec.exe to build the project in specified workspace.
SET "WORKSPACE=/"
SET "PROJECT=test-board"
SET HEADLESS=--launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild
stm32cubeidec.exe %HEADLESS% -build %PROJECT% -data "%WORKSPACE%"

SET PATH=%OLD_PATH%
ECHO ON