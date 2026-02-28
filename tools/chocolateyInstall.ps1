$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64          = 'https://installers.lmstudio.ai/win32/x64/0.4.6-1/LM-Studio-0.4.6-1-x64.exe'
  checksum64     = '4C4E6C9738BCA9904E5E21CB16258672BD7EBA7680CB185D68AA5BCBB05F1B94'
  checksumType64 = 'sha256'
  softwareName   = 'LM Studio*'
  silentArgs     = '/S /quiet'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
