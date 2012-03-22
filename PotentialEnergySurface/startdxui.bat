echo off
IF EXIST net.net goto :RUN_FROM_NET
echo on
rem
rem
rem Copy this file to each work folder. When you double-click it, a variable DXDATA will be set and OpenDX will run. The point of doing this is to make your nets independent of the data location.  Your Data Prompter header (.general file) should only refer to the ACW filename, not its path on U: etc. If, when you are ready to save your net *IN YOUR WORK FOLDER*, you call it "net.net", this batch file will pick it up automatically at each subsequent use.
rem
rem
pause
echo off
start/min dx -edit -data "U:\Computer Science\08965\data" 
goto :END
:RUN_FROM_NET
start/min dx -edit -data "U:\Computer Science\08965\data" -program net.net
:END

