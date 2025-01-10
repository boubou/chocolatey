$ErrorActionPreference = 'Stop';

$packageName = 'CloudBerryExplorer.AmazonS3'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.msp360.com/CloudBerryExplorerSetup_v6.7.1.2_netv4.6.2.exe'

$installerPackage = Join-Path $toolsDir "CloudBerryExplorer.AmazonS3.exe";

$packageArgs = @{
  packageName   = $packageName
  fileFullPath  = $installerPackage
  url64bit      = $url64
  checksum64    = '716B9DB1F65B8E3D72901C0B219A0485F5D936E1502E8CF9361D476F28CA235F'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs

$installerAuto = Join-Path $toolsDir 'CloudBerryExplorer.AmazonS3.au3';
$installArgs = "/c autoit3 `"$installerAuto`" `"$installerPackage`""
Write-Host "Installing `'$installerPackage`' with AutoIt3 using `'$installerAuto`'"
Start-ChocolateyProcessAsAdmin "$installArgs" "cmd.exe"
