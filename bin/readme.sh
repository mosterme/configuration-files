#!/bin/sh

echo "# configuration-files"
echo
echo "aliases, configurations, dotfiles, scripts and more."
echo
echo "* [What do you use to manage your dotfiles?](https://news.ycombinator.com/item?id=11070797)"
echo "* [How to store dotfiles in a bare git repository.](https://www.atlassian.com/git/tutorials/dotfiles)"
echo

for file in .*
do
  if [ ! -d "$file" ]; then
      echo "## $file"
      echo "\`\`\`sh"
      cat "$file"
      echo "\`\`\`"
  fi
done
