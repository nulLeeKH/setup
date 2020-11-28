sh dependencies.sh

git config --global user.email "$1"
git config --global user.name "$2"
git config --global credential.helper "$3"
git config --global core.editor "$4"

echo
echo ---------github-setup-done---------
echo
