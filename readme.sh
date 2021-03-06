#!/bin/sh

echo "# configuration-files"
echo
echo "aliases, configurations, dotfiles, scripts and more."
echo

for file in dot.* *.sh
do
  if [ ! -d "$file" ]; then
      echo "## $file"
      echo "\`\`\`sh"
      cat "$file"
      echo "\`\`\`"
      echo
  fi
done
