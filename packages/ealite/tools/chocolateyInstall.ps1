$ErrorActionPreference = 'Stop';
$url        = 'https://sparxsystems.com/bin/ealite_x64.msi'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'Enterprise Architect*'
  checksum      = '40D79241CDF58241DDDCD56838EFE11733DFC440053232867D7108D0DDD5D065'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
