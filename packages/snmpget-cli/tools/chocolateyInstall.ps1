$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://dl.ezfive.com/snmpsoft-tools/SnmpGet.zip'
    Checksum64     = 'E344A51AFEF85E338AD00CFA66958BED51E879007AFEB9A53170D893290AB602'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs