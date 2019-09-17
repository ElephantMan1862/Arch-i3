#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

####DISPLAY MANAGER YERİNE OTURUMU AÇABİLMEK İÇİN####
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
