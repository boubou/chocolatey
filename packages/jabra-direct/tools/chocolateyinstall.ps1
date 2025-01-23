# jabra-direct install

$ErrorActionPreference = 'Stop';

$toolsDir            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters   = Get-PackageParameters
$urlPackage = 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.exe'
$checksumPackage = '07E9FC4063C14F9D3F52869ACE388868A95A862137776B04BB9ADE49A6F901B2'
$checksumTypePackage = 'sha256'

Import-Module -Name "$($toolsDir)\helpers.ps1"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = $checksumTypePackage
	silentArgs     = '/install /quiet /norestart'
    validExitCodes = @(0, 1000, 1101)
}

Install-ChocolateyPackage @packageArgs

if ($PackageParameters.CleanStartmenu) {
	Remove-FileItem `
		-Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Jabra\"
    Install-ChocolateyShortcut `
        -ShortcutFilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Jabra Direct.lnk" `
        -TargetPath "C:\Program Files (x86)\Jabra\Direct\JabraDirect.exe" `
        -WorkDirectory "C:\Program Files (x86)\Jabra\Direct\"
}