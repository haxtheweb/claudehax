# ClaudeHAX Claude Code Plugin Marketplace

ClaudeHAX is a Claude Code plugin that teaches Claude how to work with HAX sites, HAX CLI commands, and HAX web components.

Once installed, users can ask Claude to:

- Create pages
- Create courses
- Update content
- Add assessments
- Add quizzes
- Add videos
- Use HAX web components
- Analyze existing HAX sites
- Suggest improvements
- Build educational content

using a simple command:

```text
/hax
```

---

# Requirements

Before installing ClaudeHAX, make sure the following are installed.

## 1. Claude Code

Install Claude Code and verify it works:

```bash
claude --version
```

## 2. Node.js

Node.js 22+ recommended.

Verify:

```bash
node -v
```

## 3. npm

Verify:

```bash
npm -v
```

## 4. HAX CLI

Install globally:

```bash
npm install -g @haxtheweb/create
```

Verify:

```bash
hax --help
```

**Important**

Do NOT use:

```bash
npx hax
```

That resolves to a different npm package.

Use:

```bash
npx @haxtheweb/create
```

or the globally installed:

```bash
hax
```

command.

---

# Install ClaudeHAX Marketplace

Inside Claude Code:

```text
/plugin marketplace add djfusco/claudehax
```

Install the plugin:

```text
/plugin install hax@claudehax
```

Verify installation:

```text
/plugin list
```

You should see:

```text
hax
```

---

# Example Commands

Create pages:

```text
/hax add 3 pages about iguanas
```

Analyze a site:

```text
/hax analyze this site and suggest 20 new pages
```

Add a quiz:

```text
/hax add a multiple choice quiz to this page based on the page content
```

Add flash cards:

```text
/hax find a page that would benefit from flash cards and add 5 flash cards using the best HAX web component
```

Add a quiz to a specific page:

```text
/hax add a quiz to the Penn State University page
```

Add a video:

```text
/hax find a YouTube video and add it to the Ohio State University page
```

Add interactive learning content:

```text
/hax add an interactive check-for-understanding section to the iguana overview page using HAX web components, not plain HTML
```

Recommend components:

```text
/hax inspect the available HAX web components and recommend 10 components that would improve this site
```

Create a lesson:

```text
/hax create a mini lesson page about reptile habitats and include at least two HAX web components from the elements reference
```

---

# Updating ClaudeHAX

When a new version of ClaudeHAX is released:

```text
/plugin update hax
```

This updates:

- HAX CLI knowledge
- HAX web component knowledge
- HAX workflows
- HAX examples
- HAX best practices

---

# Troubleshooting

## Plugin installed but `/hax` does not exist

Verify:

```text
/plugin list
```

If HAX is missing:

```text
/plugin install hax@claudehax
```

## Marketplace installation fails

Verify internet access and confirm:

```text
/plugin marketplace add djfusco/claudehax
```

is spelled correctly.

## `hax` command not found

Install the HAX CLI:

```bash
npm install -g @haxtheweb/create
```

Then verify:

```bash
hax --help
```

## Node.js version too old

Check:

```bash
node -v
```

Upgrade to Node.js 22+ if needed.

## Plugin behavior seems outdated

Update the plugin:

```text
/plugin update hax
```

## Claude is not using the latest HAX commands or web components

The plugin only knows what exists in the current plugin repository version.

The maintainer must:

```bash
npm run refresh:docs
git add .
git commit -m "Refresh HAX plugin docs"
git push
```

Then users update:

```text
/plugin update hax
```

---

# For Plugin Maintainers

Refresh generated documentation:

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

The web component reference is generated from:

```text
https://github.com/haxtheweb/webcomponents/tree/master/elements
```

Release updates:

```bash
npm run refresh:docs
git add .
git commit -m "Refresh HAX plugin docs"
git push
```

Users can then run:

```text
/plugin update hax
```

---

# Validate

```bash
claude plugin validate .
```
