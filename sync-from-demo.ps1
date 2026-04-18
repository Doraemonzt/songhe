# 从上一级「松鹤智语-移动端演示.html」生成本目录 index.html（强制 UTF-8，避免中文乱码导致白屏）
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$src = Join-Path $root '松鹤智语-移动端演示.html'
$dst = Join-Path $PSScriptRoot 'index.html'
if (-not (Test-Path -LiteralPath $src)) { throw "找不到源文件: $src" }
$t = [System.IO.File]::ReadAllText($src, [System.Text.UTF8Encoding]::new($false))
$t = $t -replace '\./songhe-online/songhe-built\.css', './songhe-built.css'
$t = $t -replace '\./songhe-online/songhe-logo\.png', './songhe-logo.png'
$t = $t -replace '\./songhe-online/gastro-demo-belly-map\.png', './gastro-demo-belly-map.png'
$t = $t -replace '\./songhe-online/gastro-demo-inflammation\.png', './gastro-demo-inflammation.png'
[System.IO.File]::WriteAllText($dst, $t, (New-Object System.Text.UTF8Encoding $false))
Write-Host "OK: $dst"
