if not exist target md target
cd target
call ..\bin\jjs2cmd ..\test\*.js
for %%C in ( *.cmd ) do call "%%~C"