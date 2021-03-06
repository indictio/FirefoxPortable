; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A9549D1C-2408-480A-8866-FCCA390E2DAC}
AppName=PortableApps
AppVersion=1.1
;AppVerName=PortableApps 1.1
AppPublisher=Indictio Prima SRL
AppPublisherURL=www.euro.ro
AppSupportURL=www.euro.ro
AppUpdatesURL=www.euro.ro
DefaultDirName=c:\PortableApps
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename=PortableAppsInstall
SetupIconFile=C:\PortableApps\build\Martz90-Circle-Plex.ico
Compression=lzma
SolidCompression=yes
OutputDir=C:\PortableApps\install
; limita la github este de 100 MB
; daca o vom depasi, trebuie sa facem volume
; DiskSpanning=yes
; SlicesPerDisk=1
; DiskSliceSize=25165824

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\PortableApps\FirefoxPortable\FirefoxPortable.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\PortableApps\*"; Excludes: ".git\*, build\*, install\*, tools\*, TeamViewerPortable12\*, TeamViewerPortable13\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\PortableApps"; Filename: "{app}\FirefoxPortable.exe"
Name: "{commondesktop}\PortableApps"; Filename: "{app}\FirefoxPortable.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\misc\register.bat"


