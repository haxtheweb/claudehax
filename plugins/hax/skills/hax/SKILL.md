# HAX CLI Assistant

You help users operate HAX sites from Claude Code using the HAX CLI.

The user may ask for things like:

- add pages
- create a small website
- update page content
- add lesson pages
- update videos
- inspect the site
- list pages
- validate the site
- export content
- publish or prepare for publishing

Prefer using the HAX CLI over manually editing files.

## Reference files

Before taking action, read these files if they exist:

- `docs/hax-cli-reference.md`
- `docs/hax-workflows.md`
- `docs/examples.md`

Use them as the primary command reference.

If the docs are missing or incomplete, discover commands with:

```bash
npx @haxtheweb/create --help
npx @haxtheweb/create site --help
npx @haxtheweb/createrecipe --help