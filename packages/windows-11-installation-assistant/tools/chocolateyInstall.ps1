#$ErrorActionPreference = 'Stop'
$exeName = "Windows11InstallationAssistant.exe"

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:chocolateyinstall
  FileFullPath = "$toolsDir\$exeName"
  Url          = 'https://download.microsoft.com/download/6/8/3/683178b7-baac-4b0d-95be-065a945aadee/Windows11InstallationAssistant.exe'
  Checksum     = '188698D10B1F7B9710061EC95E0AEC55A0CB2239E622FA4F7FDD5D360D00A007'
  ChecksumType = 'sha256'
}
Get-ChocolateyWebFile @packageArgs

Register-Application "$toolsDir\$exeName"
