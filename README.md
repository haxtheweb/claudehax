# HAX Claude Code Marketplace Starter

This repo is a minimal Claude Code plugin marketplace containing one plugin: `hax`.

## Expected structure

```text
.claude-plugin/
  marketplace.json
plugins/
  hax/
    .claude-plugin/
      plugin.json
    skills/
      hax/
        SKILL.md
```

The important part: `.claude-plugin/marketplace.json` must exist at the repository root.

## Install locally for testing

From Claude Code:

```text
/plugin marketplace add /absolute/path/to/hax-claude-marketplace
/plugin install hax@claudehax
```

Then use:

```text
/hax:hax add 3 pages about iguanas
```

Plugin skills are namespaced as `/plugin-name:skill-name`.

## Install from GitHub

Push this folder as the root of your GitHub repo, then in Claude Code:

```text
/plugin marketplace add djfusco/claudehax
/plugin install hax@claudehax
```

## Validate

From the marketplace repo root:

```bash
claude plugin validate .
```

Or from inside Claude Code:

```text
/plugin validate .
```
