$ErrorActionPreference = 'Stop'
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$parentDir             = (Get-Item $toolsDir).Parent.FullName
$destination           = Join-Path $(Get-ToolsLocation) 'simple-acme'
$artifact              = "plugin.store.userstore.v2.3.1.1894.zip"

$packageArgs = @{
    packageName    = "$env:chocolateyPackageName"
    destination    = $destination
    FileFullPath   = Join-Path $toolsDir "\bin\$artifact"
}

Get-ChocolateyUnzip @packageArgs
