$ErrorActionPreference = "Stop"
$WebRoot = Join-Path (Split-Path $PSScriptRoot -Parent) "cashflow"
$MobileWww = Join-Path $PSScriptRoot "www"

if (-not (Test-Path $WebRoot)) { throw "Web source not found: $WebRoot" }
if (-not (Test-Path $MobileWww)) { New-Item -ItemType Directory -Path $MobileWww -Force | Out-Null }

Copy-Item (Join-Path $WebRoot "cashflow.html") (Join-Path $MobileWww "index.html") -Force
Copy-Item (Join-Path $WebRoot "enginecahsflow.js") (Join-Path $MobileWww "enginecahsflow.js") -Force

$SrcAssets = Join-Path $WebRoot "assets"
$DstAssets = Join-Path $MobileWww "assets"
if (Test-Path $SrcAssets) {
  if (-not (Test-Path $DstAssets)) { New-Item -ItemType Directory -Path $DstAssets -Force | Out-Null }
  Copy-Item (Join-Path $SrcAssets "*") $DstAssets -Recurse -Force
}

Write-Output "Synced cashflow -> cashflow-mobile/www successfully."
