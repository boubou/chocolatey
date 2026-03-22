$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  url                    = 'https://media.kingston.com/support/downloads/KSM_setup_1.5.6.3.exe'
  checksum               = '5A7C0094144EE007FC660FCDB25401EF6FE8B479C28CDEE9628B957876637649'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
