; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Origins07"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "Bitl"
#define MyAppURL "http://origins07.epizy.com/index.php"
#define MyAppExeName "Origins07_Installer.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{65E21311-941A-44E6-904F-168BE26A11DB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=Origins07_setup
SetupIconFile=icon.ico
Compression=lzma2/ultra64
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a icon on your Desktop"; GroupDescription: "Icons"

[Files]
Source: "client\AppSettings.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\copyrights.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\fmodex.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_Client.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_Server.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_Installer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_Customizer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_DedicatedServer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_PlaySolo.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Origins07_Launcher.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\ReflectionMetadata.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\rgmain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\rgpar.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\SciLexer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "client\Microsoft.VC90.MFC\*"; DestDir: "{app}\Microsoft.VC90.MFC"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "client\Microsoft.VC90.CRT\*"; DestDir: "{app}\Microsoft.VC90.CRT"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "client\content\*"; DestDir: "{app}\content"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "client\Styles\*"; DestDir: "{app}\Styles"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "client\maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "client\cache\*"; DestDir: "{app}\cache"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Origins07 - Customize Character"; Filename: "{app}\Origins07_Customizer.exe"; Tasks: desktopicon
Name: "{commondesktop}\Origins07 - Play Solo"; Filename: "{app}\Origins07_PlaySolo.exe"; Tasks: desktopicon
Name: "{commondesktop}\Origins07"; Filename: "http://origins07.epizy.com/index.php"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Install URI (Required for Games)"; Flags: nowait postinstall skipifsilent
