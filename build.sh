#!/bin/sh
#SET PATH=%PATH%;C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727
if [ -f "bin/Backup\ GoNow.exe" ]; then
    mv bin/Backup\ GoNow.exe bin/Backup\ GoNow.exe.wip
fi
#NOTE: if above was in quotes, mac put a quote in the filename and then had 'cannot contain "'  error when I try to rename!
if [ ! -d bin ]; then mkdir bin; fi
#formerly gmcs:
mcs /target:winexe /out:bin/BackupGoNow.exe /win32icon:BackupGoNow.ico \
    AssemblyInfo.cs \
    ../ForwardFileSync/Common.cs \
    ../ForwardFileSync/LocInfo.cs \
    MainForm.cs \
    MainForm.Designer.cs \
    Program.cs \
    MyCallBack_WinForms.cs \
    /resource:MainForm.resx,MainForm \
    /r:System.Drawing.dll \
    /r:System.Windows.Forms.dll \
    /r:System.Data.dll \
    /r:System.Xml.dll \
    1>out.txt 2>err.txt
if [ -f "`command -v outputinspector`" ]; then
    outputinspector
fi
