@echo off
setlocal enabledelayedexpansion

set "src_file=base.csv"
set /a start_num=1
set /a copies=0

set /a current_num=start_num
set /a count=0

:copy_loop
:find_unique_name
if exist "!current_num!.csv" (
    set /a current_num+=1
    goto find_unique_name
)

copy "%src_file%" "!current_num!.csv"
echo ƒRƒs[Š®—¹: !current_num!.csv

set /a count+=1
if !count! LSS %copies% (
    set /a current_num+=1
    goto copy_loop
)

pause