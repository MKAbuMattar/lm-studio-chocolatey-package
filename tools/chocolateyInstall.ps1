$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64          = 'https://installers.lmstudio.ai/win32/x64/0.3.12-1/LM-Studio-0.3.12-1-x64.exe'
  checksum64     = '9619281CC477EF2B0229F94FFCF8A6549BD43954AEB37B1201B0AB79E7AE3B4A'
  checksumType64 = 'sha256'
  softwareName   = 'LM Studio*'
  silentArgs     = '/S /quiet'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
