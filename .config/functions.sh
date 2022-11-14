#some functions i want to use in my shell

#auomatically pull my relevant git repos
function start {
    echo "Updating config files"
    config pull

}

function vqn {
    #check if argument isnt null
    if [ -z "$1" ]
        then
            fn="quick"
        else
            fn=$1
    fi
    if [[ -f "$OBSIDIAN_PATH/Quicknotes/$fn.md" ]]; then
        vim "$OBSIDIAN_PATH/Quicknotes/$fn.md"
    else
        echo "Copy quicknote template from templates foldr"
        cp "$TEMPLATE_HOME/notes/quicknote.md" "$OBSIDIAN_PATH/Quicknotes/$fn.md"
        sed -i "s/TITLE/$fn/g" "$OBSIDIAN_PATH/Quicknotes/$fn.md"
        vim "$OBSIDIAN_PATH/Quicknotes/$fn.md"
    fi
}

function lqn {
    #check if argument isnt null
    if [ -z "$1" ]
        then
            fn="quick"
        else
            fn=$1
    fi
    if [[ -f "$OBSIDIAN_PATH/Quicknotes/$fn.md" ]]; then
        lw_editor "$OBSIDIAN_PATH/Quicknotes/$fn.md"
    else
        echo "Copy quicknote template from templates folder"
        cp "$TEMPLATE_HOME/notes/quicknote.md" "$OBSIDIAN_PATH/Quicknotes/$fn.md"
        sed -i "s/TITLE/$fn/g" "$OBSIDIAN_PATH/Quicknotes/$fn.md"
        lw_editor "$OBSIDIAN_PATH/Quicknotes/$fn.md"
    fi
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



function templates {
    cd $TEMPLATE_HOME
}

#Latex

function svgfig {
    cp -r "$TEMPLATE_HOME/svgfig" "$1"
    sed -i'.tmp' "s/xxxfolderxxx/$1/g" "$1/fig.tex"
    cd "$1"
    rm *.tmp
    if [[ -f "$TEMPLATE_HOME/inkscapetemplates/$2.svg" ]]; then
        echo "copy from tempalte $2"
        cp "$TEMPLATE_HOME/inkscapetemplates/$2.svg" "./$1.svg"
    else
        echo "copy from base template"
        cp "$TEMPLATE_HOME/inkscapetemplates/none.svg" "./$1.svg"
    fi
}

function pngfig {
    cp -r "$TEMPLATE_HOME/pngfig" "$1"
    sed -i'.tmp' "s/xxxfolderxxx/$1/g" "$1/fig.tex"
    cd "$1"
    rm *.tmp
}

function textemplate {
    cp -r "$TEMPLATE_HOME/textemplate" "$1"
    cd "$1"
    git init
    git add .
    git commit -m"Initial commit"
    echo "Initialized empty latex template and git repo, please add remote repo"
}

function svgcopy {
    cp -r $1 $2
    cd $2
    for f in *$1*; do
        mv $f "${f//$1/$2}"
    done
    for f in *.tex; do
        sed -i'.tmp' "s/$1/$2/g" $f
        rm *.tmp
    done
}

function svgpath {
    for f in *.pdf_tex; do
        name=${f%.*}
        sed -i'.tmp' "s/$name/figures\/$name\/$name/g" $f
        rm *.tmp
    done
}

function svgls {
    cat "$TEMPLATE_HOME/inkscapetemplates/readme"
}

#Python

function pyplot {
    [[ -z $1 ]] && NAME="plot.py" || NAME="$1.py"
    if [[ -f $NAME ]]; then
        echo "Error: Plot script with this name already exists"
    else
        cp "$TEMPLATE_HOME/python/plot.py" "$NAME"
        vim $NAME
    fi
}

#C/C++
function cproj {
    cp -r "$TEMPLATE_HOME/cproj" "$1"
    cd "$1"
}
