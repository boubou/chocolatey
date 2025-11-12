$ErrorActionPreference = 'Stop';
$packageName= 'Sophos Connect'
$Version = "2.5.0146.0918"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url64bit      = "https://download.sophos.com/network/clients/SophosConnect_2.5.0_GA_IPsec_and_SSLVPN.msi"
  softwareName  = "Sophos Connect*"
  checksum64    = '0CECE6DAF3843BDEB154E295D051577B83D95FD49FFB42FEE0BA0BFC12450D15'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
  }
  
Install-ChocolateyPackage @packageArgs