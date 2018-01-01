; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Thresshold"
#define MyAppVersion "0.6.5"
#define MyAppPublisher "TriHard Studios"
#define MyAppURL "https://trihardstudios.github.io"
#define MyAppExeName "Thresshold  0.6.5.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C476ABF5-DBF9-4CCF-828F-C2E4A7A73720}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Installer\Output
OutputBaseFilename=Thresshold 0.8.5 Setup
SetupIconFile=E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Thressshold_ VER 0.5\Icons\MAINICON.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Release\Thresshold  0.6.5.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Release\ExpandsionPack.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Post Install Code\postInsall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Current Project\Coding\C++\Thressshold_ VER 0.5\Thressshold_ VER 0.5\Icons\MAINICON.ico"; DestDir: "{app}\assets"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\postInstall.bat"; Flags: runascurrentuser postinstall
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
