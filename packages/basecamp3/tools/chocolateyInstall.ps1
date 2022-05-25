$ErrorActionPreference = 'Stop';
$url        = 'https://bc3-desktop.s3.amazonaws.com/windows/basecamp3setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'basecamp3'
  checksum 		= '06DE88CD38B7F78B76E38233EA1A3DD0FF31B16F3DAD28ED49E468B666BCD12F'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
