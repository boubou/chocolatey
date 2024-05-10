$ErrorActionPreference = 'Stop';
$packageName= 'Software Ideas Modeler.portable'
$toolsDir =  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = $packageName
    Url64          = 'https://www.softwareideas.net/Download/File/3714/SoftwareIdeasModeler-14-40.zip'
    Checksum64     = 'E5C8EF243FC07EA8AA3AAD43F870FA1D19FB83D969FE8DD1EB93D393A5B74554'
    ChecksumType64 = 'sha256'
    UnzipLocation  = $toolsDir
}

# Download and unzip into a temp folder
Install-ChocolateyZipPackage @packageArgs