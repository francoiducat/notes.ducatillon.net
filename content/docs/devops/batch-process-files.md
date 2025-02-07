## Script that removes all lines containing foo in all .md files into the current folder recursively

```bash
#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mRemove all lines...\033[0m\n"


# Find all .html files in the current directory and subdirectories
find . -type f -name "*.md" | while read file; do
  # Run vim on each file to remove all lines containing foo
  vim -es -c ":g/foo/d" -c ":wq" "$file"
done
```
