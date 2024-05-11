$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Viewer'
$Version = "12.47"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = "https://www.softwareideas.net/Download/File/3713/SoftwareIdeasModelerSetup-14-40.exe"
  softwareName  = "Software Ideas Viewer*"
  checksum      = 'F90D591E4356ACE1C4469231CDA86B8D12D2E86279BA965B3AF29026D539C350'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)
  }

Install-ChocolateyPackage @packageArgs