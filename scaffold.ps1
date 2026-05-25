# scaffold.ps1 — creates the red team repo folder structure on Windows
# Run from the repo root: powershell -ExecutionPolicy Bypass -File scaffold.ps1
# Or just: .\scaffold.ps1

$dirs = @(
  "recon/subdomain-enum",
  "recon/port-scanner",
  "recon/osint",
  "recon/dns",
  "enumeration/web",
  "enumeration/smb",
  "enumeration/snmp",
  "enumeration/ldap",
  "exploitation/web",
  "exploitation/network",
  "exploitation/wireless",
  "post-exploitation/linux",
  "post-exploitation/windows",
  "post-exploitation/active-directory",
  "payloads",
  "c2",
  "evasion",
  "credential-attacks",
  "reporting",
  "docs",
  "tests"
)

foreach ($d in $dirs) {
  New-Item -ItemType Directory -Force -Path $d | Out-Null
  $gitkeep = Join-Path $d ".gitkeep"
  if (-not (Test-Path $gitkeep)) {
    New-Item -ItemType File -Force -Path $gitkeep | Out-Null
  }
}

Write-Host "[+] Folder structure created." -ForegroundColor Green
Write-Host "[+] Next: git add . ; git commit -m 'Initial scaffolding'" -ForegroundColor Cyan
