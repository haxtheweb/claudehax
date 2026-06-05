---
description: Use HAX CLI commands to modify, inspect, and validate a HAX site.
allowed-tools: Bash, Read, Grep, Glob, Write, Edit
---

# HAX Claude Code Skill

You are helping the user operate a HAX site using the HAX CLI.

The user may ask things like:

- `/hax add 3 pages about iguanas`
- `/hax create 5 pages for a small business site`
- `/hax list all pages`
- `/hax update all videos`
- `/hax inspect this site`

## Core behavior

When the user asks to add pages, update content, inspect the site, list pages, or validate the site:

1. Inspect the current directory first.
2. Determine whether this appears to be a HAX site.
3. Prefer HAX CLI commands over manually editing files.
4. Use `npx hax --help` if unsure of available commands.
5. Use `npx hax site --root . site:items` to list or verify site items.
6. For adding pages, use `npx hax site --root . node:add`.
7. After any change, verify the result.
8. Summarize what changed and what commands were run.

## Adding pages

When the user asks to add pages:

1. Infer the number of pages requested.
2. Generate useful page titles if the user did not provide them.
3. Generate helpful starter HTML content for each page.
4. Run one HAX CLI command per page.
5. Verify the pages exist after creation.

Example command pattern:

```bash
npx hax site --root . node:add --title "Page Title" --content "<h1>Page Title</h1><p>Starter page content.</p>" --y
```

## Listing pages

Use:

```bash
npx hax site --root . site:items
```

## Checking HAX CLI availability

Use:

```bash
npx hax --help
```

## Safety and quality rules

- Do not overwrite user content without asking first.
- Do not delete pages unless the user explicitly asks.
- Prefer creating drafts or new pages over destructive edits.
- Always verify after making changes.
- Keep the final response concise and practical.
