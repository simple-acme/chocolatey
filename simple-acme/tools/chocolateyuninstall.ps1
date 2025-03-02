$ErrorActionPreference = 'Stop';
$destination           = Join-Path $(Get-ToolsLocation) 'simple-acme'
$exepath               = (Join-Path $destination 'wacs.exe')
$tag                   = "v2.323."

$packageArgs = @{
    FilePath   = "simple-acme.$tag.win-x86.pluggable.zip"
    FilePath64 = "simple-acme.$tag.win-x64.pluggable.zip"
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath64

Uninstall-BinFile -Name 'wacs' -Path $exepath