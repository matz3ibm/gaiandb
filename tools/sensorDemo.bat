@ECHO OFF
rem ============================================================================
rem  GaianDB
rem  Copyright IBM Corp. 2009
rem  
rem  LICENSE: Eclipse Public License v1.0
rem  http://www.eclipse.org/legal/epl-v10.html
rem ============================================================================

rem ============================================================================
rem  This batch file monitors Lenovo ThinkPad sensors (using SensorReader.dll)
rem  and plots them in a standalone UI.
rem ============================================================================

TITLE GaianDB Demo :: System Statistics

if not defined GDBH set GDBH=..
set GDBL=%GDBH%\lib

SET CLASSPATH=%GDBL%\GAIANDB.jar;%GDBL%\GAIANDB-tools.jar;%GDBL%\prefusetrimmed.jar;%GDBL%\derby.jar;%GDBL%\derbyclient.jar

java -version
java -cp %CLASSPATH% com.ibm.gaiandb.apps.sensordemo.SensorDemo

rem PAUSE
