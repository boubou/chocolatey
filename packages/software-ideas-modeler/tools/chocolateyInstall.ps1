$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler'
$Version = "14.50"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url64bit      = "https://www.softwareideas.net/Download/File/3718/SoftwareIdeasModelerSetup-14-50.exe"
  softwareName  = "Software Ideas Modeler*"
  checksum64    = '1C9C180415B92E758C50294A90567BD6A5661B3AF123658A3323E52211EF6946'
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs