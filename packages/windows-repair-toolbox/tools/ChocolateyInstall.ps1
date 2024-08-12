$ErrorActionPreference = 'Stop'
$packageName = 'windows-repair-toolbox'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64bit       = 'https://windows-repair-toolbox.com/files/Windows_Repair_Toolbox.zip'
    Checksum64     = 'E6DABA1AC1BDE9BF3661D2449EB8F20DBDC79626380FECA8E5F6E0EED2688AC4'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs