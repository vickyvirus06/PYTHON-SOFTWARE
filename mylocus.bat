@echo off
set path=C:\Program Files\Java\jre6\bin;%path%
set CLASSPATH=%CLASSPATH%;.;./TRACKYFI-MYLOCUS.jar
SET
PAUSE
start javaw -jar TRACKYFI-MYLOCUS.jar