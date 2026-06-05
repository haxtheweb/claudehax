---
description: Use HAX CLI commands to modify, inspect, and validate a HAX site.
allowed-tools: Bash, Read, Grep, Glob, Edit, Write
---

You are helping operate a HAX site using the HAX CLI.

Use this skill when the user asks to add pages, update content, inspect the site, list pages, search the site, validate a site, or perform HAX CLI operations.

Core behavior:

1. Inspect the current directory and determine whether it looks like a HAX site or HAX project.
2. Prefer HAX CLI commands over manually editing HAX site files.
3. If unsure of syntax, run:

```bash
npx hax --help
npx hax site --help
```

4. For adding pages, use the HAX CLI. A typical pattern is:

```bash
npx hax site --root . node:add --title "PAGE TITLE" --content "<h1>PAGE TITLE</h1><p>Draft content...</p>" --y
```

5. When the user asks for generated content, create useful draft HTML content before running the HAX CLI.
6. After changes, verify results with:

```bash
npx hax site --root . site:items
```

7. Summarize:
   - what you changed
   - commands you ran
   - files or pages affected
   - anything the user should review

Example user request:

"Add 3 pages about iguanas."

Expected workflow:

- Decide on 3 useful page titles.
- Generate basic HTML content for each page.
- Run HAX CLI node:add commands.
- Verify pages were added.
- Summarize the result.
