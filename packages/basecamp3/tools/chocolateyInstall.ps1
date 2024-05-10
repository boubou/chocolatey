$ErrorActionPreference = 'Stop';
$url        = 'https://bc3-desktop.s3.amazonaws.com/windows/basecamp3setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'basecamp3'
  checksum 		= '520615A0AE51110F32EF5FEA7D9F08A35D5D2300E531012CB57AD5D85C32B779'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
