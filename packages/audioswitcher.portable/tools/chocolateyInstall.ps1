$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://github.com/xenolightning/AudioSwitcher_v1/releases/download/1.8.0.142/AudioSwitcher.zip'
    Checksum64     = 'E675B85A7C8465E02B58148F8D98B4ADAB78C3A7423160CA78D1237D8469ACE4'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs