rm -rf Ligatured-Hack;
git clone https://github.com/shellcodesniper/Ligatured-Hack
cd Ligatured-Hack
git submodule update --depth 1 --init --recursive

LOCATION_HACK=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep Hack.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
rm -rf nerd-fonts;
curl -L -o HACK.zip $LOCATION_HACK;
unzip -o HACK.zip -d $(pwd)/fonts/nerd-fonts/
rm HACK.zip

LOCATION_IOSEVKA=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep Iosevka.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
rm -rf nerd-fonts;
curl -L -o IO.zip $LOCATION_HACK;
unzip -o IO.zip -d $(pwd)/fonts/nerd-fonts/
rm HACK.zip

docker build . -t ligatured-hack
docker run -v $(pwd)/fonts/output:/usr/src/app/fonts/output ligatured-hack
