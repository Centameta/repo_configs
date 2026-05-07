# Getting Started

This is a shared configuration repository. Follow these steps to copy the parts you need into your project.

## 1. Use the Template

Clone this repository or download the files you need.

## 2. Pick and Copy Config Files

```bash
git clone https://github.com/Centameta/dev_configs.git
cd dev_configs
```

Copy the required files into your project, for example:
- `.vscode/` for editor defaults
- `.editorconfig`, `.prettierrc.json`, `.clang-format` for formatting
- `hooks/pre-commit` for local hook setup
- `docker/` for dev container baseline
- `.config/` and `.ssh/config.example` for shell/terminal/SSH templates

## 3. Set Up Your Project Development Branch

The branching model uses two core branches:

| Branch | Purpose |
|---|---|
| `main` | Stable, production-ready |
| `development` | Active integration branch |

If `development` doesn't exist yet:

```bash
git checkout -b development
git push -u origin development
```

## 4. Project Type Quick-Start

### Python
```bash
python -m venv .venv
source .venv/bin/activate        # Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### Rust
```bash
cargo new my_project
cd my_project
cargo run
```

### Web (Node / TypeScript)
```bash
npm create vite@latest my-app
cd my-app
npm install
npm run dev
```

### Mobile (Flutter)
```bash
flutter create my_app
cd my_app
flutter run
```

### AI / ML (Python)
```bash
python -m venv .venv
source .venv/bin/activate
pip install torch transformers datasets
```

### Agentic / LLM Applications
```bash
python -m venv .venv
source .venv/bin/activate
pip install openai anthropic langchain
```

## 5. Enable CI

The `.github/workflows/ci.yml` file contains pre-written steps for each language.  
Uncomment the relevant block for your project type.

## 6. Next Steps

- Update `README.md` with your project's details.
- Review `CONTRIBUTING.md` and adjust to your team's workflow.
- Add environment-specific config files (`.env.example`, `config/`, etc.).
- Configure branch protection rulesets in GitHub repository settings.
