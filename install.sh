#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y;

golang_install() {
 wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
 tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
}
go_path_setting() {
 echo "export GOROOT=/usr/local/go" >> ~/.bashrc
 echo "export GOPATH=$HOME/go" >> ~/.bashrc
 echo "export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH" >> ~/.bashrc
 source ~/.bashrc
 }
golang_install;
go_path_setting;
sudo apt-get install -y python3;
sudo apt-get install -y python3-pip;
sudo apt-get install -y ruby;
sudo apt-get install -y screen;
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y libpcap-dev
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
pip install py-altdns;
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
go get -u github.com/tomnomnom/gf
sudo snap install feroxbuster
mkdir ~/.gf
mkdir ~/Tools;
mkdir ~/Recon;
dir=~/Tools;
go get -u github.com/ffuf/ffuf;
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
go get github.com/tomnomnom/hacks/waybackurls;
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
nuclei -update-templates;
go get -u -v github.com/hahwul/dalfox;
go get -u -v github.com/lc/gau;
go get github.com/hakluke/hakcheckurl;
go get github.com/hakluke/hakrawler;
go get github.com/hakluke/hakrevdns;
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder;
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/blechschmidt/massdns $dir/massdns;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/GerbenJavado/LinkFinder $dir/LinkFinder;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/danielmiessler/SecLists.git;
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider;
go get -u -v github.com/projectdiscovery/dnsprobe;
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch;
go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns;
git clone https://github.com/1ndianl33t/Gf-Patterns $dir/Gf-Patterns;
pip3 install corscanner
pip3 install -r ~/Tools/*/requirements.txt;
mv $dir/Gf-Patterns/*.json /root/.gf/;
rm -r $dir/Gf-Patterns;
cd $dir/massdns; make;
cp $dir/massdns/bin/massdns /usr/bin/;
cd ~/.gf; wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
