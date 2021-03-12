echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> $HOME/.zprofile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install go gh zsh

echo "Install oh my zsh"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Auth login"
gh auth login

mkdir -p ~/x/src/github.com/ulkaio
export GOPATH=$HOME/x
export PATH=$PATH:$GOPATH/bin
cd $GOPATH/src/github.com/ulkaio
gh repo clone setup
cd setup
go install
setup