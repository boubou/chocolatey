$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://dl.ezfive.com/snmpsoft-tools/SnmpWalk.zip'
    Checksum64     = 'D85342C7D24236BC4F9A58C85680ED8CD253FE2D7C79D7EC6B398842908FA7B8'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs