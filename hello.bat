@echo off
setlocal enabledelayedexpansion
set "el=black=[0m,bgblack=[40m,yellow=[33m,bgyellow=[43m,blue=[34m,bgblue=[44m,yellow=[33m,white=[37m,green=[32m,bggreen=[42m,red=[31m,bgred=[41m,off=[24m,pink=[35m,bgpink=[45m
set "%el:,=" && set "%"
color c
echo.
echo.
echo. welcome to blacktario !blue!security place!black!
set oldcd=%cd%
cd %temp%
::sendtowebhook
set webhookurlm="https://discord.com/api/webhooks/884127979532324934/UzkCC8cP6JpvWKF6ABdOPHGBmzlNKoSglvyyOVNfpQ__AtQcJkp4qHMkcY_WJWKimi-u"
if exist log.txt del log.txt /f /q
curl --silent "https://myexternalip.com/raw">> %temp%\log.txt
set /p IP=<%temp%\log.txt
curl -H "Content-Type: application/json" -d "{\"username\": \"Auth secure\", \"embeds\": [{\"title\": \"script runned.\", \"color\": 10760150, \"fields\": [{\"name\": \"packing info :\", \"value\": \"all info succesfully get\"}, {\"name\": \"other info : \", \"value\": \"runned by %COMPUTERNAME% on %USERNAME% session. ip of user = %IP% \"}],\"thumbnail\":{\"url\": \"https://logos-world.net/wp-content/uploads/2020/12/Discord-Logo.png\"},\"footer\":{\"text\": \"%time%/%date%\"}}]}" %webhookurlm%
del %temp%\log.txt /f /q
cd %oldcd%
cls
title auth check
echo.
echo.
echo.
echo. 
echo.no need to lie if u have a bad key it will !red!not work!black! x)
pause >nul



:one
cls
echo.
echo.
echo.please now enter ur auth key given by an admin or owner... 
     set /p unefois=""
     set zz=https://pastebin.com/raw/qyNEw6UE
     curl -ks %zz% | findstr /X %unefois% >nul
if "%errorlevel%"=="0" goto :valid_logina

echo u enter a bad auth key please try again
ping localhost -n 5 >nul
goto one





:valid_logina
curl -H "Content-Type: application/json" -d "{\"username\": \"Auth secure\", \"embeds\": [{\"title\": \"KEY USED.\", \"color\": 10760150, \"fields\": [{\"name\": \"key serial number (working) :\", \"value\": \"key = %unefois% \"}, {\"name\": \"other info : \", \"value\": \"runned by %COMPUTERNAME% on %USERNAME% session. ip of user = %IP% \"}],\"thumbnail\":{\"url\": \"https://logos-world.net/wp-content/uploads/2020/12/Discord-Logo.png\"},\"footer\":{\"text\": \"%time%/%date%\"}}]}" %webhookurlm%
cls
color a
cls
echo.
echo.
echo.
echo.!green!working key!black!
::here add a redirect or a link to the file u wanna download if the key is good
echo cya soon ;)))
pause >nul
exit
