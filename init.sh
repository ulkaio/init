echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install go gh
gh auth login

mkdir -p ~/x/src/github.com/ulkaio
export GOPATH=$HOME/x
export PATH=$PATH:$GOPATH/bin
cd $GOPATH/src/github.com/ulkaio
gh repo clone setup
go install $GOPATH/src/github.com/ulkaio/setup
setup