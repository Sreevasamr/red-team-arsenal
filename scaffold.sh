#!/usr/bin/env bash
# scaffold.sh — creates the red team repo folder structure
# Run once from the repo root after cloning.

set -e

dirs=(
  "recon/subdomain-enum"
  "recon/port-scanner"
  "recon/osint"
  "recon/dns"
  "enumeration/web"
  "enumeration/smb"
  "enumeration/snmp"
  "enumeration/ldap"
  "exploitation/web"
  "exploitation/network"
  "exploitation/wireless"
  "post-exploitation/linux"
  "post-exploitation/windows"
  "post-exploitation/active-directory"
  "payloads"
  "c2"
  "evasion"
  "credential-attacks"
  "reporting"
  "docs"
  "tests"
)

for d in "${dirs[@]}"; do
  mkdir -p "$d"
  if [ ! -f "$d/.gitkeep" ]; then
    touch "$d/.gitkeep"
  fi
done

echo "[+] Folder structure created."
echo "[+] Run: git add . && git commit -m 'Initial scaffolding'"
