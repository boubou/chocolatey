$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://github.com/xenolightning/AudioSwitcher_v1/releases/download/1.8.0.142/AudioSwitcher.zip'
    Checksum64     = 'C991AAA5747BCC06F31FA8196F2F06B5BBB560ABA737E41098218D4CB5841A25'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs