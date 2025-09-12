$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'C93EB6C1DC1CC2B668E3651964E6DE73458871243999AD399D4247772DA0427B'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs