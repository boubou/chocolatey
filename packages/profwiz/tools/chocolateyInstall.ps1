$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = '89D077156A861E3A4AD1201D7E178C922C443C6C30701DB9CCC1259F95CBFEF4'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs