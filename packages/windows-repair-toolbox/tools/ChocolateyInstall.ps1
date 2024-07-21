$ErrorActionPreference = 'Stop'
$packageName = 'windows-repair-toolbox'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/files/Windows_Repair_Toolbox.zip'
    Checksum64     = '48BA96F84EE41FE6F9613EC88A54600034C360583D6A36C5AE49DE577185BEE2'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs