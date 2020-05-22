@set _tmp_jjs_=%tmp%\tmp%RANDOM%%RANDOM%%RANDOM%.jjs
@for /F "usebackq skip=6 delims=" %%L in ( "%~0" ) do @echo %%L >>%_tmp_jjs_%
@if exist %_tmp_jjs_% jjs %_tmp_jjs_% -- %*
@set _err_=%ERRORLEVEL%
@if exist %_tmp_jjs_% del /Q %_tmp_jjs_%
@exit /b %_err_%
/*jjs*/
