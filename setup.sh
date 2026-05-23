## Create docs directory to store system documentation
[ ! -d "$HOME/docs" ] && mkdir "$HOME/docs"

## Create repos directory to store Git repositories
[ ! -d "$HOME/repos" ] && mkdir "$HOME/repos"

## Create sandbox directory so that we can blow things up in an isolated place
[ ! -d "$HOME/sandbox" ] && mkdir "$HOME/sandbox"

## Create scripts directory to store custom scripts
[ ! -d "$HOME/scripts" ] && mkdir "$HOME/scripts"

## Copy bash_aisle to user home
cp .bash_aisle "$HOME/.bash_aisle"

## Append bash_aisle to end of bashrc
echo >> "$HOME/.bashrc"
echo '# Aisle Island' >> "$HOME/.bashrc"
echo '. .bash_aisle' >> "$HOME/.bashrc"

## Update PATH to include scripts
echo 'export PATH=$PATH:$HOME/scripts' >> "$HOME/.bashrc"

## Welcome
source "$HOME/.bashrc"
echo 'Successfully set up Aisle Island. Welcome to paradise 🌴'
