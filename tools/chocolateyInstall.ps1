$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64          = 'https://installers.lmstudio.ai/win32/x64/0.3.22-2/LM-Studio-0.3.22-2-x64.exe'
  checksum64     = 'BA634B5AE6E7598A82C271F5DB1FFB3B8A51B4E035DBACE3BFF7BFF5EC36A0B5'
  checksumType64 = 'sha256'
  softwareName   = 'LM Studio*'
  silentArgs     = '/S /quiet'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
