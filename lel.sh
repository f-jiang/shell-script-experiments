COWPATH=/usr/share/cowsay/cows
cowfiles=($(ls $COWPATH))

while [[ 1 ]] ; do
    clear
    fortune | cowsay -f ${cowfiles[$RANDOM % ${#cowfiles[@]}]} | toilet -f term -t --gay
    sleep $1
done
