$ErrorActionPreference = 'Stop';
$packageName= 'HP Image Assistant'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://hpia.hpcloud.hp.com/downloads/hpia/hp-hpia-5.3.2.exe'
    Checksum64     = 'E1B8214B0C0B3B6B4C37181CAC1914B4E16FA60E6B063A7F76A1D7A96908E1F0'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs