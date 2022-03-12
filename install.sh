#!/bin/bash


sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install unzip -y
sudo apt-get install -y --reinstall build-essential
sudo apt-get install -y python3-pip
sudo apt-get install -y dnsutils
sudo apt-get install -y lua5.1 alsa-utils libpq5
sudo apt-get install -y python3;
sudo apt-get install -y python3-pip;
sudo apt-get install -y ruby;
sudo apt-get install -y screen;
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install cmake -y
sudo apt-get install jq -y
sudo apt-get install snapd -y
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y libpcap-dev
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev
sudo apt-get install -y rename
sudo apt-get install -y feroxbuster
git clone https://github.com/danielmiessler/SecLists.git
sudo apt-get autoremove -y
sudo apt clean -y

golang_install(){
  wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
  sudo tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
  export GOROOT=/usr/local/go
  export GOPATH=$HOME/go
  export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
  if [[ $(go version | grep -o '1.17') == 1.17 ]]; then
  echo -e "Go is installed Successfully"
  sudo echo 'export GOROOT=/usr/local/go' >> ~/.bashrc 
  sudo echo 'export GOPATH=$HOME/go' >> ~/.bashrc 
  sudo echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
  source ~/.bashrc
  fi

}

projectdiscovery_tools(){
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
    nuclei update templates
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
    go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
    go install -v github.com/projectdiscovery/notify/cmd/notify@latest
    GO111MODULE=on go get -v github.com/projectdiscovery/mapcidr/cmd/mapcidr
    
}

tomnomnom_tools(){
    go install -v github.com/tomnomnom/waybackurls@latest
    go install -v github.com/tomnomnom/httprobe@latest
    go install -v github.com/tomnomnom/assetfinder@latest
    go install -v github.com/tomnomnom/qsreplace@latest
    go install -v github.com/tomnomnom/unfurl@latest
    go install -v github.com/tomnomnom/gf@latest | gf -h 
    echo 'source $GOPATH/pkg/mod/github.com/tomnomnom/gf*/gf-completion.bash' >> ~/.bashrc
    source ~/.bashrc
    sudo cp -r $GOPATH/pkg/mod/github.com/tomnomnom/gf*/examples ~/.gf
}


golang_install;
tomnomnom_tools;
projectdiscovery_tools;
