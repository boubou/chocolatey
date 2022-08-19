$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://dl.ezfive.com/snmpsoft-tools/SnmpTrapGen.zip'
    Checksum64     = 'D06FA7CD5C661182C302D6A7AAC982C43E755577CCD2C5FCE6BBF0065B827B27'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs