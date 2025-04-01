$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.forensit.com/Downloads/Profwiz.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Profwiz*'
  checksum      = 'E12DFA8E694F9AC7FC6AB5B50598ECD322B771949F955DCBC52ED3A17D466FFB'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs