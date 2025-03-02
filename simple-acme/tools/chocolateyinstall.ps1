$ErrorActionPreference = 'Stop'
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$destination           = Join-Path $(Get-ToolsLocation) 'simple-acme'
$exepath               = (Join-Path $destination 'wacs.exe')
$build                 = "2.3.1.1894"

$packageArgs = @{
    packageName    = "$env:chocolateyPackageName"
    destination    = $destination
    FileFullPath   = Join-Path $toolsDir "\bin\simple-acme.v$build.win-x86.pluggable.zip"
    FileFullPath64 = Join-Path $toolsDir "\bin\simple-acme.v$build.win-x64.pluggable.zip"
}

Get-ChocolateyUnzip @packageArgs
Install-BinFile -Name 'wacs' -Path $exepath
Remove-Item -ea 0 -force -path $toolsDir\*.zip
