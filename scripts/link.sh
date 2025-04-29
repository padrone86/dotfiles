#!/bin/sh

dotfiles_root=$(cd $(dirname $0)/.. && pwd)
skip_files=("." ".." ".git")

cd ${dotfiles_root}/dotfiles
for file in .*; do
    if printf "%s\n" "${skip_files[@]}" | grep -qx "$file"; then
        continue
    fi

    ln -sf ${PWD}/${file} ${HOME}
done

