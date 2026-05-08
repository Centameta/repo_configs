# dev_configs

A shared configuration repository for **Python · Rust · Web · Mobile · AI/ML · Agentic** projects.

## Repository Structure

```
dev_configs/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md           # Bug report template
│   │   └── feature_request.md     # Feature request template
│   ├── workflows/
│   │   ├── ci.yml                  # CI pipeline (enable steps for your stack)
│   │   └── source-branch-check.yml # Enforces PRs to main come from development
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── copilot-instructions.md    # Copilot / agent guidance
├── .config/
│   ├── ohmyposh/centa.omp.json    # oh-my-posh theme config
│   ├── powershell/                # PowerShell profile templates
│   └── ubuntu-terminal/           # Ubuntu terminal profile templates
├── .ssh/config.example            # SSH config template
├── .vscode/                       # Shared VS Code settings/extensions/launch
├── .cargo/config.toml             # Rust cargo defaults
├── cmake/CMakePresets.json        # CMake presets
├── docker/
│   ├── Dockerfile.dev
│   └── docker-compose.yml
├── hooks/pre-commit               # Optional local hook template
├── .editorconfig
├── .clang-format
├── .prettierrc.json
├── .prettierignore
├── .env.example
├── docs/
│   └── getting-started.md          # Step-by-step setup guide
├── .gitignore                      # Covers C/C++, Python, Qt, JS, Node, Rust, Wasm, web & mobile
├── centa_ruleset.json              # Branch-protection rulesets (import into GitHub)
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE                         # Apache 2.0
└── README.md
```

## Branching Model

| Branch | Purpose |
|---|---|
| `main` | Stable, production-ready code |
| `development` | Active integration — all feature branches merge here first |

## Quick Start

1. Click **"Use this template"** to create a new repository.
2. Copy the config files you need into your project (for example `.editorconfig`, `.vscode/`, `hooks/pre-commit`, docker files, or formatter configs).
3. See **[docs/getting-started.md](docs/getting-started.md)** for language-specific setup steps.
4. Uncomment the relevant block in **`.github/workflows/ci.yml`** for your stack.
5. Import branch-protection rulesets from **`centa_ruleset.json`** (see [Branch Protection](#branch-protection) below).

## Branch Protection

`centa_ruleset.json` contains two ready-to-import GitHub rulesets:

| Ruleset | Target | What it enforces |
|---|---|---|
| `centa-main-protection` | `main` | No direct push; PRs only from `development`; 1 approval required; CI must pass; no unresolved threads; linear history; only admins can delete |
| `centa-development-protection` | `development` | No direct push; PRs required; 1 approval required; CI must pass; only admins can delete |

**How to import:**

1. Go to your repository → **Settings → Rules → Rulesets**.
2. Click **New ruleset → Import ruleset**.
3. Paste the first `{ … }` object from `centa_ruleset.json` and save.
4. Repeat for the second object.

> **Note:** `actor_id: 5` in `bypass_actors` maps to the built-in **Admin** repository role, which is the only role that can bypass these rules, delete branches, or force-push.

## Supported Stacks

| Domain | Key Tools |
|---|---|
| Python | pip, venv, ruff, mypy, pytest |
| Rust | cargo, rustfmt, clippy |
| Web | Node, Vite, TypeScript, ESLint, Prettier |
| Mobile | Flutter / React Native |
| AI / ML | PyTorch, Transformers, LangChain |
| Agentic | OpenAI, Anthropic, LangGraph |

## License

[Apache 2.0](LICENSE)
