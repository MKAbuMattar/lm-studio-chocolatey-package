$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64          = 'https://installers.lmstudio.ai/win32/x64/0.3.18-3/LM-Studio-0.3.18-3-x64.exe'
  checksum64     = '38882BBBF079C0297B5346D7C46D587A15F2BDAFB36F193ECFFC83C605F34AC3'
  checksumType64 = 'sha256'
  softwareName   = 'LM Studio*'
  silentArgs     = '/S /quiet'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
