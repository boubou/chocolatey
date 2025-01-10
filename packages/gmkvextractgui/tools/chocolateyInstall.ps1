$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url32bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum32     = 'DC6638979B6F0E155974223E36ACA3E8D3E486EC2EB68DC4C6038564BB938FC2'
    ChecksumType32 = 'sha256'
    Url64bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum64     = 'DC6638979B6F0E155974223E36ACA3E8D3E486EC2EB68DC4C6038564BB938FC2'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs