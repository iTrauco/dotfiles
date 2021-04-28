# README.md

## Usage
This branch contains the reconcilled [dotfiles](https://github.com/iTrauco/dotfiles) that had to be archived due to configuration drift between my work-issued and personal development systems...

This is a git bare repo without a source tree to allow for synchronization of these configs without the risk of env dependencies.

-[Create the alias config and assign to system path as 'config']
```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
-[Version with normal commands]
```
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

-[install on new os]
```
# commit alias to .bashrc
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# source repo set to ignore clone
echo ".cfg" >> .gitignore
# clone bare repo into 'dot' folder of $HOME
git clone --bare <git-repo-url> $HOME/.cfg
# define shell alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# checkout content
config checkout
```
### Personal Dev(macOS) System
This branch contains the most critical dotfiles of my personal development system for macOS Big Sur...

### error handling
```
# example of error
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
# resolve by removing conflicts
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
# checkout again
config checkout
# Set the flag showUntrackedFiles to no on repo
config config --local status.showUntrackedFiles no
```
