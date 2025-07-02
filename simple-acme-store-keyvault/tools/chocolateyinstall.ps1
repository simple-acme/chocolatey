$ErrorActionPreference = 'Stop'
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$parentDir             = (Get-Item $toolsDir).Parent.FullName
$destination           = Join-Path $(Get-ToolsLocation) 'simple-acme'
$artifact              = "plugin.store.keyvault.v2.3.3.2009.zip"

$packageArgs = @{
    packageName    = "$env:chocolateyPackageName"
    destination    = $destination
    FileFullPath   = Join-Path $parentDir "\bin\$artifact"
}

Get-ChocolateyUnzip @packageArgs
