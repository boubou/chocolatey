$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'FF10E4BF7D23028B048F025A5F0FEE7DF4751A007899D66E6CA30E1D53796BA3'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs