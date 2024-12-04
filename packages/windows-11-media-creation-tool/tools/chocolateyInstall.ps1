$ErrorActionPreference = 'Stop'
$exeName = "MediaCreationTool.exe"

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:chocolateyinstall
  FileFullPath = "$toolsDir\$exeName"
  Url          = 'https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/mediacreationtool.exe'
  Checksum     = 'AB9967C2CD345FFDBF3C4283D95BB23C77A82A2782F381634F5DFA48F2B75071'
  ChecksumType = 'sha256'
}
Get-ChocolateyWebFile @packageArgs

Register-Application "$toolsDir\$exeName"
