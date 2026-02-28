$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://media.kingston.com/support/downloads/KSM_setup_1.5.6.1.exe'
  checksum               = '1219AA31118E3F1309213BDE1585CC470DBBC13FF197CE3C37235102931840B4'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
