$ErrorActionPreference = 'Stop'
$packageName = 'windows-repair-toolbox'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/download/click.php?id=Windows_Repair_Toolbox'
    Checksum64     = 'B24C86D2CD42E40BA20DE4AC31C59FFFC1661307F9F3075B069EBA0595BD785D'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs