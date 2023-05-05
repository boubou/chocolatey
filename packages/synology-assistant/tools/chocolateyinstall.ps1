$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'Synology Assistant*'
  fileType       = 'EXE'
  url            = 'https://global.synologydownload.com/download/Utility/Assistant/7.0.4-50051/Windows/synology-assistant-7.0.4-50051.exe?model=DS3612xs&bays=12&dsm_version=6.2.4&build_number=25556'
  checksum       = '0858F796EB7FCEBE6B7108B247B28A47519E9A103CA57A66C6AD45161FE00249'
  checksumType   = 'sha256'
  silentArgs     = "/S"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs