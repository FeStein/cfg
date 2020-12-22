#some functions i want to use in my shell

#auomatically pull my relevant git repos
function start {
    echo "Updating config files"
    config pull

}


#automatically push my relevant git repos
function finish {
    echo "Updating config files"
    config pull
    echo "Pushing config files"
    config add -u
    config commit -m'Finished work - autoupdate'
    config push
}

