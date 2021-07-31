
get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

rm -rf ~/.vimrc
rm -rf ~/.zshrc

vimrc_path=$(get_abs_filename './vim/_vimrc')
zshrc_path=$(get_abs_filename './zsh/_zshrc')

ln -s ${vimrc_path}  ~/.vimrc
ln -s ${zshrc_path} ~/.zshrc


