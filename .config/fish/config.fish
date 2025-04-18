set -gx EDITOR nvim
set -g fish_greeting

source ~/.config/fish/hyde_config.fish

if status is-interactive
    starship init fish | source
end
set -Ua fish_user_paths "/home/abysswatcher/.config/herd-lite/bin"
# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias vc='code'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
abbr htdocs 'cd /opt/lampp/htdocs/'
abbr domains 'sudo -E nvim /opt/lampp/extra/httpd-vhosts.conf'
abbr hosts 'sudo -E nvim /etc/hosts'
abbr nvime 'sudo -E nvim'
abbr xrm 'nohup xremap /home/abysswatcher/.config/xremap/config.yml'
abbr komande 'cd ~/komande/ && nvim'

#Zoxide to cd 
zoxide init --cmd cd fish | source

fish_vi_key_bindings

