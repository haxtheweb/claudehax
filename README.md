# ClaudeHAX Claude Code Plugin Marketplace

This repo is a Claude Code plugin marketplace for HAX.

It provides the `/hax` Claude Code skill so users can operate HAX sites with:

- HAX CLI commands
- HAX web components
- generated reference docs
- HAX workflow guidance

## Install marketplace in Claude Code

From Claude Code:

```text
/plugin marketplace add djfusco/claudehax
/plugin install hax@claudehax
```

Then use:

```text
/hax add 3 pages about iguanas
/hax analyze this site and suggest 20 new pages
/hax add a multiple choice quiz to this page based on the page content
```

## Refresh generated docs

Run:

```bash
npm run refresh:docs
```

This updates:

```text
plugins/hax/skills/hax/docs/hax-cli-reference.md
plugins/hax/skills/hax/docs/hax-elements-reference.md
```

The CLI reference is generated from:

```bash
npx @haxtheweb/create --help
npx @haxtheweb/create site --help
```

The elements reference is generated from:

```text
https://github.com/haxtheweb/webcomponents/tree/master/elements
```

## Important

Do not use:

```bash
npx hax
```

That resolves to the wrong npm package.

Use:

```bash
npx @haxtheweb/create
```

or the globally installed `hax` command from `@haxtheweb/create`.

## Release/update workflow

```bash
npm run refresh:docs
git add .
git commit -m "Refresh HAX plugin docs"
git push
```

Users can then run in Claude Code:

```text
/plugin update hax
```

## Validate

```bash
claude plugin validate .
```
