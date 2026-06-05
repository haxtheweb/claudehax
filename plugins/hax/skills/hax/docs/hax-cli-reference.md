# Add Page

npx hax site --root . node:add --title "Page" --content "<p>Content</p>" --y

# List Pages

npx hax site --root . site:items

# Search Site

npx hax site --root . site:search --search "video"

# Export HTML

npx hax site --root . site:html