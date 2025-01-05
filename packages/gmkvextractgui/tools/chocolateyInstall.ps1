$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url32bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum32     = '37C83072A9E9D755043DB8310F490C4402F9474BF6BC51E1090E43896D5F7B5E'
    ChecksumType32 = 'sha256'
    Url64bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum64     = '37C83072A9E9D755043DB8310F490C4402F9474BF6BC51E1090E43896D5F7B5E'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs