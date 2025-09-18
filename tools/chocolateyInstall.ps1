$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64          = 'https://installers.lmstudio.ai/win32/x64/0.3.26-6/LM-Studio-0.3.26-6-x64.exe'
  checksum64     = 'EC7B30B8C00573DDB8ABE75EDA9A8ED8C2FD0107D7F9C7DC2D58A9F72A7F2215'
  checksumType64 = 'sha256'
  softwareName   = 'LM Studio*'
  silentArgs     = '/S /quiet'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
