echo "Generating ssh key for git"

if [ -z $1 ]; then
    echo "We need to know which encription algorithm to use."
else
    if [ -z $2 ]; then
        echo "Ops. We need an e-mail address to add to the key."
    else
        if [ $1 == "rsa" ]; then
            ssh-keygen -t rsa -b 4096 -C "$2"
        elif [ $1 == "ed25519" ]; then
            ssh-keygen -t ed25519 -C "your_email@example.com"
        else
            echo "Unknown algorithm. Please, check this script for more options."
        fi
    fi
fi