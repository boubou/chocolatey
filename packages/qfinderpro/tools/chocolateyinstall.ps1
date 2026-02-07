$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'qfinder*'
  fileType       = 'EXE'
  url            = 'https://download.qnap.com/Storage/Utility/QNAPQfinderProWindows-7.13.2.1308.exe'
  checksum       = '065F434994F54D4997F5DCC13FD2B35F3BE42F27EB28E6AF8AC9A22D5DC0B280'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs