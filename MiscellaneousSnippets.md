### Javascript Add Port if URL contains it:
```js
get _baseUrl() {
    // let port = '';
    const wloc = window.location;
    // if (wloc.hasOwnProperty('port') && typeof wloc.port !== 'undefined' && wloc.port != null) {
    //     port = ':' + wloc.port;
    // }
    const port = window.location.port ? `:${window.location.port}` : '';
    const protocol = window.location.protocol;
    const host = window.location.hostname;
    return `${protocol}//${host}${port}/data/${this._slug}`;
}
```
```js
get _baseUrl() {
    const protocol = window.location.protocol;
    const host = window.location.hostname;
    const port = window.location.port ? `:${window.location.port}` : '';
    return `${protocol}//${host}${port}/data/${this._slug}`;
}
```
### Powershell Take Backup of specific File:
```ps1
Copy-Item httpd.conf httpd_$(Get-Date -format 'dd-MM-yyyy').conf
Copy-Item httpd.conf httpd_$(Get-Date -format 'dd-MM-yyyy_HH-mm-ss').conf
Copy-Item httpd.conf httpd_php-cfg_$(Get-Date -format 'dd-MM-yyyy').conf
Copy-Item httpd.conf httpd_php-cfg_$(Get-Date -format 'dd-MM-yyyy_HH-mm-ss').conf
```
```psm1
Copy-Item httpd.conf httpd_$(Get-Date -format 'dd-MM-yyyy').conf
Copy-Item httpd.conf httpd_$(Get-Date -format 'dd-MM-yyyy_HH-mm-ss').conf
Copy-Item httpd.conf httpd_php-cfg_$(Get-Date -format 'dd-MM-yyyy').conf
Copy-Item httpd.conf httpd_php-cfg_$(Get-Date -format 'dd-MM-yyyy_HH-mm-ss').conf
```
### Diverse & Self-Explanatory Purpose Batch Snippets:
```bat
del /f /q C:\WebDevApps\Apache2446\logs\*.log
del /s /f /q C:\WebDevApps\Apache2446\logs\*.log
httpd.exe -k install -n "Apache2446" && net start Apache2446
net stop Apache2446 && net start Apache2446 && del /f /q C:\WebDevApps\Apache2446\logs\*.log
net stop Apache2446 && net start Apache2446 && del /s /f /q C:\WebDevApps\Apache2446\logs\*.log

https://accounts.google.com/ServiceLogin?service=mail
https://accounts.google.com/ServiceLogin?service=writely
https://accounts.google.com/ServiceLogin?service=google-maps

(?:\$siteId|\$companyId|\$campaignId)(?:\s+(?:\$siteId|\$companyId|\$campaignId))*
git restore --staged app/Providers && git restore app/Providers/
git restore --staged app/Providers && git restore app/Providers/

powercfg.exe /hibernate off && del /f /s /q c:\hiberfil.sys
powercfg.exe /hibernate off && del /f /s /q %systemroot%\hiberfil.sys

SETLOCAL ENABLEDELAYEDEXPANSION
SET FilesToPurge=%ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-*
(FOR %%P IN (!FilesToPurge!) DO ( ECHO %%P && DEL /S /Q %%P )) 2>NUL
ENDLOCAL

SETLOCAL ENABLEDELAYEDEXPANSION && SET FilesToPurge=%ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && (FOR %%P IN (!FilesToPurge!) DO ( ECHO %%P && DEL /S /Q %%P )) 2>NUL && ENDLOCAL

SC STOP WinDefend && DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && SC START WinDefend
NET STOP WinDefend && DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && NET START WinDefend

DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-*

for /f "delims=" %i in ('dir /a:d /s /b %SystemRoot%\Logs') do rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%SystemRoot%"\Logs') do rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Logs') do rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Sys*?Logs') do rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%SystemRoot%"\Logs') do echo rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Logs') do echo rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Sys*?Logs') do echo rd /s /q "%i"

dism /online /get-features /format:table|find "| Enabled"
dism /online /get-features /format:table|find "| Disabled"
for /f %%a in ('dism /online /get-features /format:table ^|find "| Disabled"') do (dism /online /disable-feature:%%a /remove)

PowerArchiver 2021 200073 Offline Registration Keys:
3QCW4-VE5RH-6TB8Y-JNJBT-VH7C5
4EFXZ-DQW6R-HJRG5-E4FD3-ZXGRH
VKX8YN-ULTJH-CGEXIF-Z325E-CVRJ8
HG54X-Z3F2C-RH7BK-Y8NUL-ULNK8
TJHRC-GV54Z3-QG54X-EBKYL-IM0UL
9T6XC5-4GX3W-FR2ZQ-G546V-TKL9I

powercfg –h off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg.exe –h off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg /hibernate off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg.exe /hibernate off && del /f /s /q %systemdrive%\hiberfil.sys

Stop Windows Updates from CMD (Elevated) (Admin):
Net Stop bits
Net Stop wuauserv
Net Stop appidsvc
Net Stop cryptsvc

Net Stop bits
Net Stop wuauserv
Net Stop appidsvc
Net Stop cryptsvc

Net Stop bits & Net Stop wuauserv & Net Stop appidsvc & Net Stop cryptsvc & Net Stop msiserver
Net Stop bits && Net Stop wuauserv && Net Stop appidsvc && Net Stop cryptsvc && Net Stop msiserver
Set "Dest=%WinDir%\rescache" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\rescache" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\Downloaded Program Files" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\SoftwareDistribution\Download" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\SoftwareDistribution\DataStore" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%

Verify FType & Association
ftype | find /I "VBS" & assoc .vbs
ftype | find /I "VBS" && assoc .vbs
Rectify FType & Association
ftype VBSFile="%SystemRoot%\System32\WScript.exe" "%1" %* & assoc .vbs=VBSFile
ftype VBSFile="%SystemRoot%\System32\WScript.exe" "%1" %* && assoc .vbs=VBSFile

VISER@453692817

Find and delete registry keys of specific app/software, post-uninstallation:
STRINGNAME = SOFTWARE NAME / APPLICATION NAME
REGPATH = Path to the registry key for the SOFTWARE
for /f "tokens=2,*" %%G IN ('REG QUERY REGPATH /v STRINGNAME 2^>NUL ^| FINDSTR STRINGNAME') DO REG DELETE REGPATH /v STRINGNAME /F

wmic startup list full
wmic process where "name='svchost.exe'" | findstr /v "SYSTEM"
wmic process where "name='svchost.exe'" | findstr /v "SYSTEM" | findstr "ProcessId"

wmic process where "name='svchost.exe'" call GetOwner | findstr /RC:"User"
wmic process where "name='svchost.exe'" call GetOwner | findstr /V /RC:"\<User = SYSTEM;\>"

for /f "skip=1 tokens=*" %%i in ('wmic process where "name='svchost.exe'" call GetOwner | findstr /RC:"User"') do echo %%i

wmic /NameSpace:\\root\Microsoft\SqlServer\ComputerManagement15 path ServerNetworkProtocol where ProtocolName='Tcp' call SetEnable | findstr /RC:"\<ReturnValue = 0;\>" && (echo zero) || (echo non-zero)

wmic /NameSpace:\\root\Microsoft\SqlServer\ComputerManagement15 path ServerNetworkProtocol where ProtocolName='Tcp' call SetEnable | findstr /RC:"\<ReturnValue = 0;\>" && (echo zero) || (echo non-zero)
```
```cmd
del /f /q C:\WebDevApps\Apache2446\logs\*.log
del /s /f /q C:\WebDevApps\Apache2446\logs\*.log
httpd.exe -k install -n "Apache2446" && net start Apache2446
net stop Apache2446 && net start Apache2446 && del /f /q C:\WebDevApps\Apache2446\logs\*.log
net stop Apache2446 && net start Apache2446 && del /s /f /q C:\WebDevApps\Apache2446\logs\*.log

https://accounts.google.com/ServiceLogin?service=mail
https://accounts.google.com/ServiceLogin?service=writely
https://accounts.google.com/ServiceLogin?service=google-maps

(?:\$siteId|\$companyId|\$campaignId)(?:\s+(?:\$siteId|\$companyId|\$campaignId))*
git restore --staged app/Providers && git restore app/Providers/
git restore --staged app/Providers && git restore app/Providers/

powercfg.exe /hibernate off && del /f /s /q c:\hiberfil.sys
powercfg.exe /hibernate off && del /f /s /q %systemroot%\hiberfil.sys

SETLOCAL ENABLEDELAYEDEXPANSION
SET FilesToPurge=%ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-*
(FOR %%P IN (!FilesToPurge!) DO ( ECHO %%P && DEL /S /Q %%P )) 2>NUL
ENDLOCAL

SETLOCAL ENABLEDELAYEDEXPANSION && SET FilesToPurge=%ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && (FOR %%P IN (!FilesToPurge!) DO ( ECHO %%P && DEL /S /Q %%P )) 2>NUL && ENDLOCAL

SC STOP WinDefend && DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && SC START WinDefend
NET STOP WinDefend && DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-* && NET START WinDefend

DEL /S /Q %ProgramData%\Microsoft\"Windows Defender"\Scans\mpcache-*

for /f "delims=" %i in ('dir /a:d /s /b %SystemRoot%\Logs') do rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%SystemRoot%"\Logs') do rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Logs') do rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Sys*?Logs') do rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%SystemRoot%"\Logs') do echo rd /s /q %i
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Logs') do echo rd /s /q "%i"
for /f "delims=" %i in ('dir /a:d /s /b "%ProgramFiles%"\Sys*?Logs') do echo rd /s /q "%i"

dism /online /get-features /format:table|find "| Enabled"
dism /online /get-features /format:table|find "| Disabled"
for /f %%a in ('dism /online /get-features /format:table ^|find "| Disabled"') do (dism /online /disable-feature:%%a /remove)

PowerArchiver 2021 200073 Offline Registration Keys:
3QCW4-VE5RH-6TB8Y-JNJBT-VH7C5
4EFXZ-DQW6R-HJRG5-E4FD3-ZXGRH
VKX8YN-ULTJH-CGEXIF-Z325E-CVRJ8
HG54X-Z3F2C-RH7BK-Y8NUL-ULNK8
TJHRC-GV54Z3-QG54X-EBKYL-IM0UL
9T6XC5-4GX3W-FR2ZQ-G546V-TKL9I

powercfg –h off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg.exe –h off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg /hibernate off && del /f /s /q %systemdrive%\hiberfil.sys
powercfg.exe /hibernate off && del /f /s /q %systemdrive%\hiberfil.sys

Stop Windows Updates from CMD (Elevated) (Admin):
Net Stop bits
Net Stop wuauserv
Net Stop appidsvc
Net Stop cryptsvc

Net Stop bits
Net Stop wuauserv
Net Stop appidsvc
Net Stop cryptsvc

Net Stop bits & Net Stop wuauserv & Net Stop appidsvc & Net Stop cryptsvc & Net Stop msiserver
Net Stop bits && Net Stop wuauserv && Net Stop appidsvc && Net Stop cryptsvc && Net Stop msiserver
Set "Dest=%WinDir%\rescache" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\rescache" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\Downloaded Program Files" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\SoftwareDistribution\Download" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%
Set "Dest=C:\Windows\SoftwareDistribution\DataStore" && Call Del /f /s /q %Dest%\* 2>nul && Call RmDir /s /q %Dest%

Verify FType & Association
ftype | find /I "VBS" & assoc .vbs
ftype | find /I "VBS" && assoc .vbs
Rectify FType & Association
ftype VBSFile="%SystemRoot%\System32\WScript.exe" "%1" %* & assoc .vbs=VBSFile
ftype VBSFile="%SystemRoot%\System32\WScript.exe" "%1" %* && assoc .vbs=VBSFile

VISER@453692817

Find and delete registry keys of specific app/software, post-uninstallation:
STRINGNAME = SOFTWARE NAME / APPLICATION NAME
REGPATH = Path to the registry key for the SOFTWARE
for /f "tokens=2,*" %%G IN ('REG QUERY REGPATH /v STRINGNAME 2^>NUL ^| FINDSTR STRINGNAME') DO REG DELETE REGPATH /v STRINGNAME /F

wmic startup list full
wmic process where "name='svchost.exe'" | findstr /v "SYSTEM"
wmic process where "name='svchost.exe'" | findstr /v "SYSTEM" | findstr "ProcessId"

wmic process where "name='svchost.exe'" call GetOwner | findstr /RC:"User"
wmic process where "name='svchost.exe'" call GetOwner | findstr /V /RC:"\<User = SYSTEM;\>"

for /f "skip=1 tokens=*" %%i in ('wmic process where "name='svchost.exe'" call GetOwner | findstr /RC:"User"') do echo %%i

wmic /NameSpace:\\root\Microsoft\SqlServer\ComputerManagement15 path ServerNetworkProtocol where ProtocolName='Tcp' call SetEnable | findstr /RC:"\<ReturnValue = 0;\>" && (echo zero) || (echo non-zero)

wmic /NameSpace:\\root\Microsoft\SqlServer\ComputerManagement15 path ServerNetworkProtocol where ProtocolName='Tcp' call SetEnable | findstr /RC:"\<ReturnValue = 0;\>" && (echo zero) || (echo non-zero)
```
### Diverse & Self-Explanatory Purpose GitBash Snippets:
```sh
# Reset unpushed commits and unstage the staged-for-commit changes
git reset --soft HEAD~1 && git reset HEAD -- .
git reset --soft HEAD~1 && git reset HEAD -- .

git diff HEAD --binary > `git branch --show-current`_`date +%F`.patch
git diff HEAD --binary > `git branch --show-current`_`date +%F_%T`.patch

for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done;
for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done;

{ for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done & git diff HEAD --binary } > `git branch --show-current`_`date +%F_%T`.patch

git add -A -n 2>/dev/null | sort | uniq | sed s:/add //
git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'
`git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`

for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next; done;
for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next >> `git branch --show-current`_`date +%F_%T`.patch ; done;
{ for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next; done; } > `git branch --show-current`_`date +%F_%T`.patch

{
git add -A -n '*.php' '*.js'
git add -A -n '*.js' '*.css' '*.vue' '*.php'
git add . -n '*.js' '*.css' '*.vue' '*.php'
} => PushModsStgdFinal

git reset --hard HEAD@{1}
git push -f
git reset --hard HEAD@{1}

git reset --hard HEAD@{1} && git push -f && git reset --hard HEAD@{1}

git reset --hard HEAD@{1}
git push -f -u origin <BranchId>
git reset --hard HEAD@{1}

git reset --hard HEAD@{1} && git push -f -u <BranchId> && git reset --hard HEAD@{1}

git reset HEAD^

git reset --hard HEAD@{1}
git push -f
git reset --hard HEAD@{1}
git reset HEAD^

git reset --hard HEAD@{1}
git push -f -u origin <BranchId>
git reset --hard HEAD@{1}
git reset HEAD^

git reset --hard HEAD@{1} && git push -f && git reset --hard HEAD@{1} && git reset HEAD^
git reset --hard HEAD@{1} && git push -f -u <BranchId> && git reset --hard HEAD@{1} && git reset HEAD^

git push -f origin <sha_of_previous_commit>:master

touch ~/.bashrc ~/.bash_profile ~/.profile
touch ~/.bashrc ~/.bash_profile ~/.profile

touch ~/.bashrc ~/.bash_profile ~/.profile ~/.ssh/config
touch ~/.bashrc ~/.bash_profile ~/.profile ~/.ssh/config

ssh-keygen -t rsa -C vivekwebm2020 -f ~/.ssh/vivekwebm2020
ssh-keygen -t rsa -C "<Git/BitbucketUsername>" -f "~/.ssh/<Git/BitbucketUsername>"
ssh-keygen -t rsa -C <Git/BitbucketUsernameNoSpace> -f ~/.ssh/<Git/BitbucketUsernameNoSpace>

Clean npm-cache directory from GitBash:
rm -f $LOCALAPPDATA/npm-cache/*.*
rm -rf $LOCALAPPDATA/npm-cache/*

rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/* && rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/* && rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -rf node_modules
rm package-lock.json
npm update
npm install

rm -rf node_modules
rm package-lock.json
npm update
npm install

rm -rf node_modules & rm package-lock.json & npm update & npm install
rm -rf node_modules && rm package-lock.json && npm update && npm install
rm -rf node_modules && rm package-lock.json && npm update && npm install

rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm update && npm install
rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm update && npm install

rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm install
rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm install

rm -rf ~/.node-gyp/
rm -r node_modules/.bin/;
rm -r build/
npm install <your module>

rm -rf ~/.node-gyp/
rm -r node_modules/.bin/;
rm -r build/
npm install <your module>

Delete your $HOME/.node-gyp directory and try again:
rm -R ~/.node-gyp
Delete your $HOME/.node-gyp directory and try again:
rm -R ~/.node-gyp

rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/* && rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/* && rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

npm uninstall node-sass && npm install node-sass;
npm cache clean -f && npm uninstall node-sass && npm install node-sass;
npm cache clean -f && npm uninstall node-sass && npm install node-sass;

npm uninstall node-sass
npm install node-sass@4.14.1

set PYTHON=C:\Python27\python.exe && npm uninstall node-sass && npm install node-sass@4.14.1
set PYTHON="C:\Python27\python.exe" && npm uninstall node-sass && npm install node-sass@4.14.1

Laravel Cypress Installation and Running:
composer require laracasts/cypress --dev
php artisan cypress:boilerplate

composer require laracasts/cypress --dev && php artisan cypress:boilerplate;

Yarn / NPM Install Cypress & Faker:
yarn cache clean && yarn add cypress faker --dev
npm cache clean -f && npm install cypress faker --save-dev

NPM Fully Reset in Git Project:
rm -rf ./node_modules && rm -f package* && git checkout -- package.json && npm cache clean -f && npm install
rm -rf ./node_modules && rm -f package* && git checkout -- package.json && npm cache clean -f && npm install

Cypress Unit & Browser Testing steps and commands:

Create tests file in your project's cypress-integration directory:
# Assuming your GitBash/Bash is opened in your project's root directory
touch ./cypress/integration/sample_spec.js
touch {your_project}/cypress/integration/sample_spec.js

iEqTk5BOI@u834S54
PLUuERDM83EKGfcP

git lfs install
git init && git lfs track WinSysCmdsSelfc2.7z
git add WinSysCmdsSelfc2.7z
git config user.name "VickyDev986"
password: Nj2eb4Li8HMuTaX
password(2FA Authentication, also called Personal Access Token): fcb0c808798a4f46d7bb2cb9f6851e5f8e6a4e62
git config user.email "viveklucky1848+1@gmail.com"
git remote add origin https://github.com/VickyDev986/Viser-Windows-Utilities.git
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
git remote set-url origin https://github.com/VickyDev986/Viser-Windows-Utilities.git
git lfs track *.7z && git add *.7z
git commit -m "Windows Utilities v1"
git push origin master
git remote -v 
git remote remove origin 
:: git remote add origin git@github.com:user/repo.git
git remote add origin git@github.com:VickyDev986/Viser-Windows-Utilities.git

git config user.name "Vivek Shah" && git config user.email "viveklucky1848+1@gmail.com"
git remote -v && git remote remove origin && git remote add origin git@github.com:VickyDev986/Viser-Windows-Utilities.git
git add WinSysCmdsSelfc2.7z && git commit -m "Windows Utilities v1" && git push origin master
git lfs track WinSysCmdsSelfc2.7z && git commit -m "Windows Utilities v1" && git push origin master

# Who said `git clean` doesn't support wildcards ?
git clean -d -n '*.php' '*.json'
git clean -d -n '*.php' '*.json' '*.css' ....

# <---package.json--->
"cyp:open": "cypress open",
"cyp:instl": "cypress install",
"cyp:clear": "cypress cache clear",
"cyp:clean": "cypress cache clear",
"cyp:prune": "cypress cache prune"

# <---Bash/GitBash Terminal/Script--->
rm -f storage/framework/{views,sessions}/* && npm run cyp:open
rm -f storage/framework/{views,sessions}/* && npm run cyp:open

rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:open
rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:open

rm -f storage/framework/{views,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open
rm -f storage/framework/{views,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open

rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open
rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open

rm -f storage/framework/{views,sessions}/* && npm run cypress open
rm -f storage/framework/{views,sessions}/* && npm run cypress open

rm -f storage/framework/{views,cache,sessions}/* && npm run cypress open
rm -f storage/framework/{views,cache,sessions}/* && npm run cypress open

rm -f storage/framework/{views,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open
rm -f storage/framework/{views,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open

rm -f storage/framework/{views,cache,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open
rm -f storage/framework/{views,cache,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open

# Check and purge old unneeded stashes
git stash list
git stash clear
# Go to develop branch and get the commit and stash it as patch file
git checkout develop
git format-patch COMMIT_ID
git stash save "SAVED COMMIT PATCH"
# Come to our feature branch and apply that saved stash and then apply patch
git checkout rde-285
git stash apply @stash1
git am *.patch
```
```bash
# Reset unpushed commits and unstage the staged-for-commit changes
git reset --soft HEAD~1 && git reset HEAD -- .
git reset --soft HEAD~1 && git reset HEAD -- .

git diff HEAD --binary > `git branch --show-current`_`date +%F`.patch
git diff HEAD --binary > `git branch --show-current`_`date +%F_%T`.patch

for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done;
for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done;

{ for next in `git ls-files --others --exclude-standard`; do git --no-pager diff --no-index /dev/null $next; done & git diff HEAD --binary } > `git branch --show-current`_`date +%F_%T`.patch

git add -A -n 2>/dev/null | sort | uniq | sed s:/add //
git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'
`git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`

for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next; done;
for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next >> `git branch --show-current`_`date +%F_%T`.patch ; done;
{ for next in `git add -A -n 2>/dev/null | sort | uniq | sed s/add\ \'// | tr -d \'`; do git --no-pager diff --no-index /dev/null $next; done; } > `git branch --show-current`_`date +%F_%T`.patch

{
git add -A -n '*.php' '*.js'
git add -A -n '*.js' '*.css' '*.vue' '*.php'
git add . -n '*.js' '*.css' '*.vue' '*.php'
} => PushModsStgdFinal

git reset --hard HEAD@{1}
git push -f
git reset --hard HEAD@{1}

git reset --hard HEAD@{1} && git push -f && git reset --hard HEAD@{1}

git reset --hard HEAD@{1}
git push -f -u origin <BranchId>
git reset --hard HEAD@{1}

git reset --hard HEAD@{1} && git push -f -u <BranchId> && git reset --hard HEAD@{1}

git reset HEAD^

git reset --hard HEAD@{1}
git push -f
git reset --hard HEAD@{1}
git reset HEAD^

git reset --hard HEAD@{1}
git push -f -u origin <BranchId>
git reset --hard HEAD@{1}
git reset HEAD^

git reset --hard HEAD@{1} && git push -f && git reset --hard HEAD@{1} && git reset HEAD^
git reset --hard HEAD@{1} && git push -f -u <BranchId> && git reset --hard HEAD@{1} && git reset HEAD^

git push -f origin <sha_of_previous_commit>:master

touch ~/.bashrc ~/.bash_profile ~/.profile
touch ~/.bashrc ~/.bash_profile ~/.profile

touch ~/.bashrc ~/.bash_profile ~/.profile ~/.ssh/config
touch ~/.bashrc ~/.bash_profile ~/.profile ~/.ssh/config

ssh-keygen -t rsa -C vivekwebm2020 -f ~/.ssh/vivekwebm2020
ssh-keygen -t rsa -C "<Git/BitbucketUsername>" -f "~/.ssh/<Git/BitbucketUsername>"
ssh-keygen -t rsa -C <Git/BitbucketUsernameNoSpace> -f ~/.ssh/<Git/BitbucketUsernameNoSpace>

Clean npm-cache directory from GitBash:
rm -f $LOCALAPPDATA/npm-cache/*.*
rm -rf $LOCALAPPDATA/npm-cache/*

rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/* && rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/* && rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -rf node_modules
rm package-lock.json
npm update
npm install

rm -rf node_modules
rm package-lock.json
npm update
npm install

rm -rf node_modules & rm package-lock.json & npm update & npm install
rm -rf node_modules && rm package-lock.json && npm update && npm install
rm -rf node_modules && rm package-lock.json && npm update && npm install

rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm update && npm install
rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm update && npm install

rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm install
rm -rf node_modules && rm package-lock.json && npm cache clean -f && npm cache verify && npm install

rm -rf ~/.node-gyp/
rm -r node_modules/.bin/;
rm -r build/
npm install <your module>

rm -rf ~/.node-gyp/
rm -r node_modules/.bin/;
rm -r build/
npm install <your module>

Delete your $HOME/.node-gyp directory and try again:
rm -R ~/.node-gyp
Delete your $HOME/.node-gyp directory and try again:
rm -R ~/.node-gyp

rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/* && rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/*;
rm -f $APPDATA/npm-cache/*.* && rm -rf $APPDATA/npm-cache/* && rm -f $LOCALAPPDATA/npm-cache/*.* && rm -rf $LOCALAPPDATA/npm-cache/*;

npm uninstall node-sass && npm install node-sass;
npm cache clean -f && npm uninstall node-sass && npm install node-sass;
npm cache clean -f && npm uninstall node-sass && npm install node-sass;

npm uninstall node-sass
npm install node-sass@4.14.1

set PYTHON=C:\Python27\python.exe && npm uninstall node-sass && npm install node-sass@4.14.1
set PYTHON="C:\Python27\python.exe" && npm uninstall node-sass && npm install node-sass@4.14.1

Laravel Cypress Installation and Running:
composer require laracasts/cypress --dev
php artisan cypress:boilerplate

composer require laracasts/cypress --dev && php artisan cypress:boilerplate;

Yarn / NPM Install Cypress & Faker:
yarn cache clean && yarn add cypress faker --dev
npm cache clean -f && npm install cypress faker --save-dev

NPM Fully Reset in Git Project:
rm -rf ./node_modules && rm -f package* && git checkout -- package.json && npm cache clean -f && npm install
rm -rf ./node_modules && rm -f package* && git checkout -- package.json && npm cache clean -f && npm install

Cypress Unit & Browser Testing steps and commands:

Create tests file in your project's cypress-integration directory:
# Assuming your GitBash/Bash is opened in your project's root directory
touch ./cypress/integration/sample_spec.js
touch {your_project}/cypress/integration/sample_spec.js

iEqTk5BOI@u834S54
PLUuERDM83EKGfcP

git lfs install
git init && git lfs track WinSysCmdsSelfc2.7z
git add WinSysCmdsSelfc2.7z
git config user.name "VickyDev986"
password: Nj2eb4Li8HMuTaX
password(2FA Authentication, also called Personal Access Token): fcb0c808798a4f46d7bb2cb9f6851e5f8e6a4e62
git config user.email "viveklucky1848+1@gmail.com"
git remote add origin https://github.com/VickyDev986/Viser-Windows-Utilities.git
git remote set-url origin https://github.com/USERNAME/REPOSITORY.git
git remote set-url origin https://github.com/VickyDev986/Viser-Windows-Utilities.git
git lfs track *.7z && git add *.7z
git commit -m "Windows Utilities v1"
git push origin master
git remote -v 
git remote remove origin 
:: git remote add origin git@github.com:user/repo.git
git remote add origin git@github.com:VickyDev986/Viser-Windows-Utilities.git

git config user.name "Vivek Shah" && git config user.email "viveklucky1848+1@gmail.com"
git remote -v && git remote remove origin && git remote add origin git@github.com:VickyDev986/Viser-Windows-Utilities.git
git add WinSysCmdsSelfc2.7z && git commit -m "Windows Utilities v1" && git push origin master
git lfs track WinSysCmdsSelfc2.7z && git commit -m "Windows Utilities v1" && git push origin master

# Who said `git clean` doesn't support wildcards ?
git clean -d -n '*.php' '*.json'
git clean -d -n '*.php' '*.json' '*.css' ....

# <---package.json--->
"cyp:open": "cypress open",
"cyp:instl": "cypress install",
"cyp:clear": "cypress cache clear",
"cyp:clean": "cypress cache clear",
"cyp:prune": "cypress cache prune"

# <---Bash/GitBash Terminal/Script--->
rm -f storage/framework/{views,sessions}/* && npm run cyp:open
rm -f storage/framework/{views,sessions}/* && npm run cyp:open

rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:open
rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:open

rm -f storage/framework/{views,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open
rm -f storage/framework/{views,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open

rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open
rm -f storage/framework/{views,cache,sessions}/* && npm run cyp:clear && npm run cyp:instl && npm run cyp:open

rm -f storage/framework/{views,sessions}/* && npm run cypress open
rm -f storage/framework/{views,sessions}/* && npm run cypress open

rm -f storage/framework/{views,cache,sessions}/* && npm run cypress open
rm -f storage/framework/{views,cache,sessions}/* && npm run cypress open

rm -f storage/framework/{views,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open
rm -f storage/framework/{views,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open

rm -f storage/framework/{views,cache,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open
rm -f storage/framework/{views,cache,sessions}/* && npm run cypress cache clear && npm run cypress install && npm run cypress open

# Check and purge old unneeded stashes
git stash list
git stash clear
# Go to develop branch and get the commit and stash it as patch file
git checkout develop
git format-patch COMMIT_ID
git stash save "SAVED COMMIT PATCH"
# Come to our feature branch and apply that saved stash and then apply patch
git checkout rde-285
git stash apply @stash1
git am *.patch
```
### Laravel / PHP create artisan command:
```php
Artisan::command('logs:clear', function() {
    exec('rm ' . storage_path('logs/*.log'));
    $this->comment('Logs have been cleared!');
})->describe('Clear log files');
```
```phps
Artisan::command('logs:clear', function() {
    exec('rm ' . storage_path('logs/*.log'));
    $this->comment('Logs have been cleared!');
})->describe('Clear log files');
```
### PHP Measure time-taken by code to execute and resultantly performance of the code:
```php
$time_start = microtime(true);
## ==================================== PHP Code =================================##
$time_end = microtime(true);
$execution_time = ($time_end - $time_start)/60;
dd('<b>Total Execution Time:</b> '.$execution_time.' Mins');
echo '<b>Total Execution Time:</b> '.$execution_time.' Mins';die;
echo '<b>Total Execution Time:</b> '.$execution_time.' Mins';exit;
```
```php
$startTime = microtime(true);
## ==================================== PHP Code =================================##
$finishTime = microtime(true);
$execution_time = ($finishTime - $startTime)/60;
dd('<b>Total Execution Time:</b> '.$execution_time.' Mins');
echo '<b>Total Execution Time:</b> '.$execution_time.' Mins';die;
echo '<b>Total Execution Time:</b> '.$execution_time.' Mins';exit;
```
### Laravel/PHP Log specific queries in any Code-File(eg. Model files):
```php
DB::enableQueryLog();
$dbJob = collect(\App\Models\RR\Job::with('locations')->find($job->job_id)->toArray());
$logs = DB::getQueryLog();
DB::disableQueryLog();
dd($logs);
```
### Bash/GitBash clear screen and purge history fully:
```sh
rm -f ~/.bash_history && history -wc && history -cw && reset && clear;
history -d $((HISTCMD)) && history -wc && history -cw && reset && clear;
history -d $((HISTCMD-1)) && history -wc && history -cw && reset && clear;
rm ~/.bash_history && touch ~/.bash_history && history -wc && history -cw && reset && clear;
```
```bash
rm -f ~/.bash_history && history -wc && history -cw && reset && clear;
history -d $((HISTCMD)) && history -wc && history -cw && reset && clear;
history -d $((HISTCMD-1)) && history -wc && history -cw && reset && clear;
rm ~/.bash_history && touch ~/.bash_history && history -wc && history -cw && reset && clear;
```
### Bash create files from console itself:
```sh
echo "PROMPT_COMMAND='history -a'" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.profile
echo "PROMPT_COMMAND='history -a'" >> ~/.minttyrc
echo "PROMPT_COMMAND='history -a'" >> ~/.gitconfig
echo "PROMPT_COMMAND='history -a'" >> ~/.bash_profile
dd if=/dev/zero of=1G.test bs=1 count=0 seek=1G
fallocate -l 1G 1G.test
[ -f ~/.bashrc ] || cat > ~/.bashrc
[ -f ~/.bashrc ] || touch ~/.bashrc
[ -f ~/.bashrc ] || echo > ~/.bashrc
gbfiles=(".profile" ".bashrc" ".minttyrc" ".gitconfig" ".bash_profile")
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~"/${file}"; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || true > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || echo > ~/$file; done;
```
```bash
echo "PROMPT_COMMAND='history -a'" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.profile
echo "PROMPT_COMMAND='history -a'" >> ~/.minttyrc
echo "PROMPT_COMMAND='history -a'" >> ~/.gitconfig
echo "PROMPT_COMMAND='history -a'" >> ~/.bash_profile
dd if=/dev/zero of=1G.test bs=1 count=0 seek=1G
fallocate -l 1G 1G.test
[ -f ~/.bashrc ] || cat > ~/.bashrc
[ -f ~/.bashrc ] || touch ~/.bashrc
[ -f ~/.bashrc ] || echo > ~/.bashrc
gbfiles=(".profile" ".bashrc" ".minttyrc" ".gitconfig" ".bash_profile")
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~"/${file}"; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || true > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || echo > ~/$file; done;
```
### Regex Replace "file" with "gbfile" below:
```
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~"/${file}"; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || true > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || echo > ~/$file; done;
Find: (file)( |;|\})
Replace: gb\1\2 or gb$1$2
Output:
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || > ~/$gbfile; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || > ~"/${gbfile}"; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || true > ~/$gbfile; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || echo > ~/$gbfile; done;
```
```
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || > ~"/${file}"; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || true > ~/$file; done;
for file in ${gbfiles[@]}; do [ -f ~/$file ] || echo > ~/$file; done;
Find: (file)( |;|\})
Replace: gb\1\2 or gb$1$2
Output:
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || > ~/$gbfile; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || > ~"/${gbfile}"; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || true > ~/$gbfile; done;
for gbfile in ${gbfiles[@]}; do [ -f ~/$gbfile ] || echo > ~/$gbfile; done;
```
### Powershell Rename multiple files by fixed string-replace:
```ps1
dir .\ | where {$_.extension -in '.js','.vue'} | ren -NewName { $_.Name -replace "Campaign", "Company" }
```
```psm1
dir .\ | where {$_.extension -in '.js','.vue'} | ren -NewName { $_.Name -replace "Campaign", "Company" }
```
```psd1
dir .\ | where {$_.extension -in '.js','.vue'} | ren -NewName { $_.Name -replace "Campaign", "Company" }
```
### Powershell Copy(or Clone or Dupe or Duplicate) files and Rename the copies by string-replace:
```ps1
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension} -WhatIf
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension}
```
```psd1
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension} -WhatIf
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension}
```
```psm1
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension} -WhatIf
Get-ChildItem reach-*.js | Copy-Item -Destination {($_.BaseName -replace 'campaign','company')+$_.Extension}
```
### Batch/Powershell Hybrid for renaming files by string-replace:
```bat
powershell -command "DIR *.ts | REN -NewName { $_.Name -replace '....ts-', '' }"
```
```cmd
powershell -command "DIR *.ts | REN -NewName { $_.Name -replace '....ts-', '' }"
```
### Windows Search Filename part string with special chars(~=<<any special-char incl. space>>):
```search-ms
Windows Search Box: "V~= 2020"*mp4
```
```
Windows Search Box: "V~= 2020"*mp4
```
