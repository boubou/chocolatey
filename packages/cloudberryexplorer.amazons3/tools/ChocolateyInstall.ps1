$ErrorActionPreference = 'Stop';

$packageName = 'CloudBerryExplorer.S3'
$installerType = 'exe'
$url64      = 'https://download.msp360.com/CloudBerryExplorerSetup_v6.7.1.2_netv4.6.2.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)
checksum64    = '716B9DB1F65B8E3D72901C0B219A0485F5D936E1502E8CF9361D476F28CA235F'
checksumType64= 'sha256'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
