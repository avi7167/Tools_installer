#!/bin/sh

golang_install() {
	wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
  tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
}
go_path_setting() {
	echo "export GOROOT=/usr/local/go" >> ~/.bashrc
	echo "export GOPATH=$HOME/go" >> ~/.bashrc
	echo "export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH" >> ~/.bashrc
  }
sudo apt-get install python3;
sudo apt-get install python3-pip;
sudo apt-get install ruby;
sudo apt-get install screen;
sudo apt-get install git;
pip install py-altdns;
apt install -y libpcap-dev
go get -u github.com/tomnomnom/gf
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
mv arsenal ~/arsenal;
cd ~/arsenal;
chmod +x *.sh;
cd $dir/massdns; make;
cp $dir/massdns/bin/massdns /usr/bin/;
cd ~/.gf; wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
