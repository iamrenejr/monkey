# Install silver searcher and fzf
unameOut="$(uname -s)"
if [ "${unameOut}" == "Darwin" ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif ["${unameOut}" == "Linux" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
fi
