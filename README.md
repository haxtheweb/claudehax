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

/hax add a multiple-choice quiz to the most content-heavy page, based only on that page’s content

/hax find a page that would benefit from flash cards and add 5 flash cards using the best HAX web component
/hax add a quiz to the penn state university page                                                                                                      
/hax find a youtube video and add it to the ohio state university page   

/hax add an interactive check-for-understanding section to the iguana overview page using HAX web components, not plain HTML
/hax inspect the available HAX web components and recommend 10 components that would improve this site
/hax add a video learning section to one page using the appropriate HAX video component
/hax create a mini lesson page about reptile habitats and include at least two HAX web components from the elements reference

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
