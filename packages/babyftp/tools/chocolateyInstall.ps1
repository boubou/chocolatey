$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.pablosoftwaresolutions.com/files/babyftp.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'ZIP'
  url           = $url
  softwareName  = 'BabyFTP*'
  checksum      = '7B79B0D9659A5B58B73EAC14A4345988E7C6A475139923E9092B20AEA644648C'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs