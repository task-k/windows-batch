@echo off 
if %1. ==. goto end

if not exist %1 (
	type nul > %1
	echo %1 touched!
) else (
	copy /b %1 +,, > nul
	echo %1 update!
)
REM ---------------------------------------------------------
REM environment variable setting
REM set PATH=%PATH%;{current bat file path} 
REM ---------------------------------------------------------
:end