REM clear target folders
del .\bin\nw-packge\*.* /q
del .\bin\executable\win32\*.* /q

REM generate the nw package for node-webkit
.\tools\7z\7z -tzip a .\bin\nw-packge\creader.nw .\pdf.js\*

REM build the main executable file by merging nw.exe with the generated nw package
copy /b ".\node-webkit\bin\win32\nw.exe"+".\bin\nw-packge\creader.nw" .\bin\executable\win32\creader.exe

REM also ship the required dependencies and copyright statements
copy .\node-webkit\bin\win32\nw.pak .\bin\executable\win32\
copy .\node-webkit\bin\win32\icudt.dll .\bin\executable\win32\
copy .\node-webkit\bin\win32\ffmpegsumo.dll .\bin\executable\win32\
copy .\node-webkit\bin\win32\credits.html .\bin\executable\win32\nw-credits.html

pause