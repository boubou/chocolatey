$ErrorActionPreference = 'Stop'

$url64       = 'https://nuts.cozycloud.cc/download/channel/stable/win'
$checksum64  = 'FFF738EB8C4A3E0314D58474669B99FA6D9EE3AEDC37D91744B6E403AB128ADD'

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
