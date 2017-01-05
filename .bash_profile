# too many open files fix
ulimit -n 65536 65536

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"
DOTFILE_DIR=~/dotfiles
HISTTIMEFORMAT="%d/%m/%y %T "


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ${DOTFILE_DIR}/.{path,bash_prompt,exports,aliases,functions,extra,log_history}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# # On Mac OS install with brew and make link
# ln -s /usr/local/Cellar/bash-completion/1.3_1/etc/bash_completion
# # If possible, add tab completion for many more commands
# [ -f /etc/bash_completion ] && source /etc/bash_completion

# git completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

### coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export NODE_ENV=development
