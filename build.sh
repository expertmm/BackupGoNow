#!/bin/sh
./clean.sh
mcs -target:winexe -win32icon:../GoNowBackup.ico -o GoNowBackup.exe MainForm.cs MainForm.Designer.cs AssemblyInfo.cs Batch.cs Action.cs -r:System.Windows.Forms.dll -r:System.Drawing.dll
mv GoNowBackup.exe ../bin