; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Electric Sheep HD"
#define MyAppVersion "20190923"
#define MyAppPublisher "Electric Sheep HD"
#define MyAppURL "https://sheeps.triple6.org"
#define GitDir "electricsheep-hd-client-master"
#define ContribDir "contrib"
#define Ruby "include\ruby"
#define Flam3 "include\flam3"
#define MPV "include\mpv"
#define Which "include\which"
#define Screensaver "include\screensaver"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4914324E-3650-433D-8127-3D98A5DA489D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE.txt
InfoBeforeFile=BEFORE.txt
InfoAfterFile=AFTER.txt
OutputBaseFilename=Electric Sheep HD Installer
SetupIconFile={#GitDir}\logo.ico
Compression=lzma2/ultra
SolidCompression=yes
;WizardImageFile={#GitDir}\logo.bmp
WizardSmallImageFile={#GitDir}\logo.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{app}"; Permissions: users-full

[Files]
Source: "{#GitDir}\*"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#Ruby}\*"; DestDir: "{app}\{#ContribDir}"; Flags: ignoreversion recursesubdirs
Source: "{#Flam3}\*"; DestDir: "{app}\{#ContribDir}"; Flags: ignoreversion recursesubdirs
Source: "{#MPV}\*"; DestDir: "{app}\{#ContribDir}"; Flags: ignoreversion recursesubdirs
Source: "{#Which}\*"; DestDir: "{app}\{#ContribDir}"; Flags: ignoreversion recursesubdirs
Source: "{#Screensaver}\mpv-1.dll"; DestDir: "{win}\System32\" ; Flags: 64bit ignoreversion recursesubdirs
Source: "{#Screensaver}\Electric Sheep HD.scr"; DestDir: "{win}\System32\" ; Flags: 64bit ignoreversion recursesubdirs

[Icons]
Name: "{group}\daemon"; Filename: "{app}\daemon_windows.cmd"; IconFilename: "{app}\logo.ico"
Name: "{group}\daemon (GPU)"; Filename: "{app}\daemon_windows.cmd"; IconFilename: "{app}\logo.ico"; Parameters: "--gpu"
Name: "{group}\play"; Filename: "{app}\play_windows.cmd"; IconFilename: "{app}\logo.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Registry]
Root: HKLM32; Subkey: "Software\{#MyAppname}\Settings"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"
Root: HKLM64; Subkey: "Software\{#MyAppname}\Settings"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"
