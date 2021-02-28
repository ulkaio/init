echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/ulka/.zprofile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install go gh
gh auth login

mkdir -p ~/x/src/github.com/ulkaio
export GOPATH=$HOME/x
export PATH=$PATH:$GOPATH/bin
cd $GOPATH/src/github.com/ulkaio
gh repo clone setup
go install $GOPATH/src/github.com/ulkaio/setup
setup