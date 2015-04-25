#!/bin/sh

APP_NAME="Sublime Text"
SUBLIME_DIR="$HOME/Library/Application Support/Sublime Text 3"

if [ -d "$SUBLIME_DIR/Packages/Package Control" ]
then
  echo 'Package Control already installed.'
else
  echo 'Installing Package Control'

  curl --silent --show-error --fail --location \
    'http://sublime.wbond.net/Package%20Control.sublime-package' \
    --output "$SUBLIME_DIR/Installed Packages/Package Control.sublime-package"
fi

echo 'Add default packages and configs...'
cp -f ./settings/* "$SUBLIME_DIR/Packages/User/"

echo "Done. Open Subline and wait few minutes while Sublime Text 3 installing packages."
