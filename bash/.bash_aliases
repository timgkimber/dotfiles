alias ll='ls -l'
alias la='ls -al'
alias pd='pushd'
alias sicstus='rlwrap sicstus'
alias usage='du -s * .[a-zA-Z]* | sort -n'
# alias lprhps='lpr -P ICTMono -o HPStaplerOptions=1diagonal'
# alias lprhpsl='lpr -P ICTMono -o HPStaplerOptions=1diagonal -o HPRotate180=True'
alias lprs='lpr -P ICTMonoXerox -o StapleLocation=SinglePortrait'
# alias algs4java='java -cp "/homes/tk106/algs4/*:."'
alias coldirname='ldapsearch -h addressbook.imperial.ac.uk -x -b "o=Imperial College" displayName="*\!:1-1*"'
alias coldiruid='ldapsearch -h addressbook.imperial.ac.uk -x -b "o=Imperial College" uid=\!*'
# alias mscdb='psql -U lab_u -h /var/run/postgresql msc_leavers_destination'
alias hf='history | grep $1'
alias tsph='tmux splitw -h -c $PWD'
alias tspv='tmux splitw -v -c $PWD'
alias up_disp='export DISPLAY=:0'