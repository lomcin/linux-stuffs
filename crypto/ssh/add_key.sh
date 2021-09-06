echo "Adding ssh key for git"

if [ -z $1 ]; then
    echo "Ops. We need an key path to add the key."
else
    eval "$(ssh-agent -s)"
    ssh-add $1
fi