$ErrorActionPreference = 'Stop';
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$artifact              = "plugin.validation.dns.dreamhost.v2.4.1.2444.zip"

$packageArgs = @{
    FilePath   = $artifact
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
