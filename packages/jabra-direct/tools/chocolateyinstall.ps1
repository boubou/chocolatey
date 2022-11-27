# jabra-direct install

$ErrorActionPreference = 'Stop';

$toolsDir            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters   = Get-PackageParameters
$urlPackage = 'https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.exe'
$checksumPackage = '5E9D45D8DB3A3B3D7A5A02F20F7B5A2574A6690D07450DA9EF2E04F31AE95483'
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