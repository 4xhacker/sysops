yes Y | sudo apt-get update
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
yes Y | udo apt-get install ttf-mscorefonts-installer
yes Y | sudo apt-get install xauth
yes Y | sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
yes Y | sudo apt-get update
yes Y | sudo apt-get install --install-recommends winehq-stable
WINEPREFIX="$HOME/.wine" WINEARCH=win32 wine wineboot
