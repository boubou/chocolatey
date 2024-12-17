$ErrorActionPreference = 'Stop';

$packageName = 'CloudBerryExplorer.AmazonS3'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.msp360.com/CloudBerryExplorerSetup_v6.7.0.20_netv4.6.2.exe'

$installerPackage = Join-Path $toolsDir "CloudBerryExplorer.AmazonS3.exe";

$packageArgs = @{
  packageName   = $packageName
  fileFullPath  = $installerPackage
  url64bit      = $url64
  checksum64    = '3B723E7C14FAE4E9056A825CBD10F362790BC995CCC42CBF0DA3005D9FFA6E2F'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs

$installerAuto = Join-Path $toolsDir 'CloudBerryExplorer.AmazonS3.au3';
$installArgs = "/c autoit3 `"$installerAuto`" `"$installerPackage`""
Write-Host "Installing `'$installerPackage`' with AutoIt3 using `'$installerAuto`'"
Start-ChocolateyProcessAsAdmin "$installArgs" "cmd.exe"
