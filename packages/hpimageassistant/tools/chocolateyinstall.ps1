$ErrorActionPreference = 'Stop';
$packageName= 'HP Image Assistant'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://hpia.hpcloud.hp.com/downloads/hpia/hp-hpia-5.3.1.exe'
    Checksum64     = 'F6EC10F8185F445877116CE3E6E0FE55F746F98670762EBCF53DB301250F7887'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs