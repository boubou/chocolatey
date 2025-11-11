$ErrorActionPreference = 'Stop'

$url64       = 'https://nuts.cozycloud.cc/download/channel/stable/win'
$checksum64  = '994AE46B5D63AF17D31B89B7C2B0E7262494C141551C547E920CD81CC622F1A2'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64Bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/install /quiet /norestart'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
