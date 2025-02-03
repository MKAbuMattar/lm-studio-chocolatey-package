$ErrorActionPreference = 'Stop';
$url = 'https://installers.lmstudio.ai/win32/x64/0.3.9-6/LM-Studio-0.3.9-6-x64.exe'
$checksum = '1dbc7bafbcc458a628e23316d1b53a9906d0d30dd83673c87f86af1893ee5906'
$checksumType = 'sha256'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = $checksumType
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
