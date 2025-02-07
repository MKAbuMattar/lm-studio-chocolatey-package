$ErrorActionPreference = 'Stop';
$packageName = 'lmstudio'
$url = 'https://installers.lmstudio.ai/win32/x64/0.3.9-6/LM-Studio-0.3.9-6-x64.exe'
$installerType = 'exe'
$checksum = '1dbc7bafbcc458a628e23316d1b53a9906d0d30dd83673c87f86af1893ee5906'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

$installPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$downloadFile = Join-Path $installPath "$($packageName)Setup.exe"

Get-ChocolateyWebFile -PackageName $packageName `
  -FileFullPath $downloadFile `
  -Url $url `
  -Checksum $checksum `
  -ChecksumType $checksumType
Install-ChocolateyInstallPackage -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs $silentArgs `
  -File $downloadFile `
  -ValidExitCodes $validExitCodes
