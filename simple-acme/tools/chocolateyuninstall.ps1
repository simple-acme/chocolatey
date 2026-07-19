$ErrorActionPreference = 'Stop';
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$destination           = Join-Path $(Get-ToolsLocation) 'simple-acme'
$exepath               = (Join-Path $destination 'wacs.exe')
$build                 = "2.4.0.2350"

$packageArgs = @{
    FilePath   = Join-Path $toolsDir "\bin\simple-acme.v$build.win-x86.pluggable.zip"
    FilePath64 = Join-Path $toolsDir "\bin\simple-acme.v$build.win-x64.pluggable.zip"
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath64

Uninstall-BinFile -Name 'wacs' -Path $exepath
