$ErrorActionPreference = 'Stop';
$url        = 'https://www.sparxsystems.com/bin/easetup.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Enterprise Architect*'
  checksum      = '7526FAB136DA31C18324771EAFFA805B12A8CE26B351FBD1DD999DA42F663760'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
