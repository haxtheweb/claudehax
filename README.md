# HAX Claude Code Starter

This repo is a starter package for experimenting with Claude Code + HAX CLI.

It includes:

- A basic HAX Claude Code skill
- Plugin metadata
- Marketplace metadata
- A local install script for quick testing

## Quick local install

From inside this repo, run:

```bash
./scripts/install-local-skill.sh /path/to/your/hax-site
```

Or from your HAX site directory:

```bash
/path/to/hax-claude-starter/scripts/install-local-skill.sh
```

Then open Claude Code in the HAX site:

```bash
cd /path/to/your/hax-site
claude
```

Try:

```text
/hax add 3 pages about iguanas
```

## Repo structure

```text
hax-claude-starter/
├── .claude-plugin/
│   └── marketplace.json
├── plugins/
│   └── hax/
│       ├── .claude-plugin/
│       │   └── plugin.json
│       └── skills/
│           └── hax/
│               └── SKILL.md
├── scripts/
│   └── install-local-skill.sh
└── README.md
```

## MVP usage model

```text
User types: /hax add 3 pages about iguanas
Claude Code reads the HAX skill
Claude Code runs HAX CLI commands
The HAX site is updated
Claude verifies and summarizes the result
```

## Next steps

- Rename marketplace/plugin metadata to match your GitHub org.
- Add more skills, such as `makepage`, `update-videos`, `audit-site`, or `course-builder`.
- Later, convert this into a formal plugin marketplace repo.
