# Get some color in git.
git config --global color.ui true

# Compressed log format.
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Set the diff tool to vimdiff
git config --global diff.tool vimdiff

# Use 3 may merge in VIM.
git config --global mergetool.vimdiff3.cmd 'vim -f -d -c "wincmd J" "$MERGED" "$LOCAL" "$BASE" "$REMOTE"'
git config --global merge.tool vimdiff3

# Random aliases
git config --global alias.s "status"
git config --global alias.ch "checkout"
git config --global alias.co "commit"
git config --global alias.br "branch"
