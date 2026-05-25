# Red Team Arsenal

A curated collection of offensive security scripts for reconnaissance, enumeration, exploitation, post-exploitation, and reporting. Built for authorized penetration testing and red team engagements.

---

## ⚠️ Legal Disclaimer

These tools are intended **strictly for educational purposes and authorized security assessments**. You are responsible for ensuring you have **explicit written permission** to test any system you target with these scripts.

Unauthorized use of these tools against systems you do not own or do not have permission to test is **illegal** under computer misuse laws in most jurisdictions (including the Information Technology Act, 2000 in India, the Computer Fraud and Abuse Act in the US, and equivalent legislation elsewhere).

The author(s) of this repository assume **no liability** and are **not responsible** for any misuse or damage caused by these scripts.

---

## Repository Structure

```
.
├── recon/                  # Passive and active information gathering
│   ├── subdomain-enum/     # Subdomain discovery
│   ├── port-scanner/       # Port and service scanning
│   ├── osint/              # OSINT collection
│   └── dns/                # DNS enumeration and analysis
├── enumeration/            # Service-specific enumeration
│   ├── web/                # Web app enumeration (dirs, vhosts, params)
│   ├── smb/                # SMB enumeration
│   ├── snmp/               # SNMP enumeration
│   └── ldap/               # LDAP / AD enumeration
├── exploitation/           # Exploits and PoCs
│   ├── web/                # Web vulnerabilities (SQLi, XSS, SSRF, etc.)
│   ├── network/            # Network-level exploits
│   └── wireless/           # Wireless attack scripts
├── post-exploitation/      # Privilege escalation, persistence, lateral movement
│   ├── linux/
│   ├── windows/
│   └── active-directory/
├── payloads/               # Reverse shells, droppers, encoders
├── c2/                     # C2 helpers, beaconing utilities
├── evasion/                # AV/EDR evasion, obfuscation
├── credential-attacks/     # Hash cracking, password spraying, kerberoasting
├── reporting/              # Report templates and automation
├── docs/                   # Methodology, cheatsheets, references
└── tests/                  # Unit tests for utilities
```

---

## Quick Start

```bash
# Clone the repository
git clone https://github.com/Sreevasamr/red-team-arsenal.git
cd red-team-arsenal

# Set up a Python virtual environment
python -m venv .venv
# Windows:
.venv\Scripts\activate
# Linux / macOS:
source .venv/bin/activate

# Install shared dependencies
pip install -r requirements.txt
```

Each script directory has its own `README.md` with usage instructions and dependencies specific to that tool.

---

## Contributing

1. Create a feature branch: `git checkout -b add/<script-name>`
2. Place the script in the appropriate category folder
3. Include a per-script `README.md` covering: purpose, usage, dependencies, sample output
4. Run linters before committing: `ruff check .` and `bandit -r .`
5. Open a PR against `main`

---

## Operational Security Notes

- Never commit credentials, API keys, target IPs, or client engagement data
- Use `.env` files (gitignored) for any sensitive configuration
- Scrub logs and outputs of identifying information before pushing
- The `engagements/` directory is gitignored by default — keep client-specific data there

---

## License

MIT License © 2026 Sreevasa M R. See [LICENSE](LICENSE) for details.

---

## References

- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [PTES (Penetration Testing Execution Standard)](http://www.pentest-standard.org/)
- [MITRE ATT&CK](https://attack.mitre.org/)
- [HackTricks](https://book.hacktricks.xyz/)
