@echo off

setlocal

set JDK_PATH=C:\Program Files\Java\jdk-17
set M2_HOME=C:\Path\to\Your\Maven

set PATH=%JDK_PATH%\bin;%M2_HOME%\bin;%PATH%

cd "C:\jenkins_workspace\workspace\DeskBook-FEB\Deskbook-Backend-Java-Feb\"

call "%JDK_PATH%\bin\javac" -version
call "%M2_HOME%\bin\mvn" -version

call mvn package -Dmaven.test.skip

endlocal
