$ErrorActionPreference = 'Stop';
$url        = 'https://download.microsoft.com/download/2/F/2/2F259559-FC43-4B2C-B53F-DED3E9950912/IISCORS_amd64.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'IIS CORS Module'
  checksum 		= '8A0B60AF8435A266A67DD1DF713D380B6267376A0608203D8468A5792351BB24'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
