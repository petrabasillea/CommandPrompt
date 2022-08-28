echo off
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

::manual Var
::set CUR_MM="01"
::set CUR_DD="19"
set commit="push_"%CUR_HH%%CUR_NN%%CUR_SS%
set branch="master"

git config --global "user.email "petrabasillea@gmail.com"
git config --global "user.name "petrabasillea"

git status
timeout 60
git add .
timeout 60
git commit -m "%commit%"
timeout 60
::git commit --amend --no-edit --date="%CUR_YYYY%-%CUR_MM%-%CUR_DD% %CUR_HH%:%CUR_NN%:%CUR_SS% -0700"
git push origin %branch%
timeout 60