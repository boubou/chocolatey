$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'qfinder*'
  fileType       = 'EXE'
  url            = 'https://download.qnap.com/Storage/Utility/QNAPQfinderProWindows-7.11.3.1126.exe'
  checksum       = '0F6F6A0D9184CC82D134DB58DD569A4BB933CB9D32CEA8E7C0416F11DB0ACE3E'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs