$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url32bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum32     = 'FCBB0FA65878B7079D41934A387A58BA72F1FF96B47F8522E0F895CFC18C41B6'
    ChecksumType32 = 'sha256'
    Url64bit       = 'https://sourceforge.net/projects/gmkvextractgui/files/latest/download'
    Checksum64     = 'FCBB0FA65878B7079D41934A387A58BA72F1FF96B47F8522E0F895CFC18C41B6'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs