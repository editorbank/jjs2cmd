@if not exist %~sdpn0.header.cmd (@echo Error: not exist file %~sdpn0.header.cmd! )&& exit /b 1 
@if not exist "%~1" (@echo Use: %~n0 myfile.js )&& exit /b 1 
@for %%F in ( "%~1" ) do @(
  echo Converting "%%F" to "%%~nF.cmd" ...
  copy /b %~sdpn0.header.cmd+"%%~F" "%%~nF.cmd"
)
