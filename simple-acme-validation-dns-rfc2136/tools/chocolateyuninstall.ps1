$ErrorActionPreference = 'Stop';
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$artifact              = "plugin.validation.dns.rfc2136.v2.3.1.1894.zip"

$packageArgs = @{
    FilePath   = $artifact
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
