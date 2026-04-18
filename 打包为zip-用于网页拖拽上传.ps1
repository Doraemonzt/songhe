# Build a small zip for Netlify Drop or Gitee upload (no node_modules)

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path ([Environment]::GetFolderPath('Desktop')) 'songhe-online-deploy.zip'

$files = @('index.html', 'songhe-built.css', 'netlify.toml')

$temp = Join-Path $env:TEMP ("songhe-deploy-" + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $temp | Out-Null
try {
    foreach ($f in $files) {
        $src = Join-Path $here $f
        if (Test-Path -LiteralPath $src) {
            Copy-Item -LiteralPath $src -Destination (Join-Path $temp $f)
        }
    }
    if (Test-Path -LiteralPath $out) { Remove-Item -LiteralPath $out -Force }
    Compress-Archive -Path (Join-Path $temp '*') -DestinationPath $out
    Write-Host "OK: $out"
    Write-Host "Next: open https://app.netlify.com/drop and drag this zip (or extracted folder)."
}
finally {
    Remove-Item -LiteralPath $temp -Recurse -Force -ErrorAction SilentlyContinue
}
