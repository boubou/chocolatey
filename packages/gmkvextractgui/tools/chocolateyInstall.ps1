$ErrorActionPreference = 'Stop'
$packageName = 'registryfilevalidator'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url            = 'https://github.com/Gpower2/gMKVExtractGUI/releases/download/v2.11.1/gMKVExtractGUI.v2.11.1.7z'
    Checksum       = '04E13F6567D1AFE217A350B1AA108AEAE6286A7B8F912AB8790396D0143E883F'
    ChecksumType   = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs