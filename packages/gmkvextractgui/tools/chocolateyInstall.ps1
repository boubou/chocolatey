$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url            = 'https://github.com/Gpower2/gMKVExtractGUI/releases/download/v2.10.0/gMKVExtractGUI.v2.10.0.7z'
    Checksum       = 'F6006117884E1ACB97885A394458D70C143BAC816EBCB4FAD0A3DF7965A5AAAB'
    ChecksumType   = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs