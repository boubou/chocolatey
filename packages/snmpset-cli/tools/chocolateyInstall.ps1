$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://dl.ezfive.com/snmpsoft-tools/SnmpSet.zip'
    Checksum64     = '1AA4B226756ECDEB3828AA4C6278E9C9F52CECE721AE56B0104196F348F73C66'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs