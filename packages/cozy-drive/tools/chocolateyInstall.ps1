$ErrorActionPreference = 'Stop'

$url64       = 'https://nuts.cozycloud.cc/download/channel/stable/win'
$checksum64  = 'F83E0D28BD0765645B1C6298AFC6B948E621B774516BE315ADF38EC68FBF4868'

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
