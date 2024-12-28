$ErrorActionPreference = 'Stop';
$url        = 'https://hpia.hpcloud.hp.com/downloads/hpia/hp-hpia-5.3.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'HP Image Assistant'
  checksum 		= 'F6EC10F8185F445877116CE3E6E0FE55F746F98670762EBCF53DB301250F7887'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
  
}

Install-ChocolateyPackage @packageArgs
