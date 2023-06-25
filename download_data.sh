# git submodule update --depth 1 --init --recursive

LOCATION_HACK=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep Hack.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
rm -rf nerd-fonts;
curl -L -o HACK.zip $LOCATION_HACK;
unzip -o HACK.zip -d $(pwd)/fonts/sources/
rm HACK.zip

LOCATION_IOSEVKA=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep Iosevka.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
rm -rf nerd-fonts;
curl -L -o IO.zip $LOCATION_IOSEVKA;
unzip -o IO.zip -d $(pwd)/fonts/sources/
rm IO.zip
# LOCATION_IOSEVKA=$(curl -s https://api.github.com/repos/be5invis/Iosevka/releases/latest | grep super-ttc-iosevka- | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
# rm -rf iosveka;
# curl -L -o IO.zip $LOCATION_IOSEVKA;
# unzip -o IO.zip -d $(pwd)/fonts/sources/
# rm IO.zip
#
LOCATION_PLEX=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep IBMPlexMono.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
rm -rf nerd-fonts;
curl -L -o plex.zip $LOCATION_PLEX;
unzip -o plex.zip -d $(pwd)/fonts/sources/
rm plex.zip

# LOCATION_PLEX=$(curl -s https://api.github.com/repos/IBM/plex/releases/latest | grep TrueType.zip | grep browser | awk '{ print $2 }' | sed 's/,$//' | sed 's/"//g');
# rm -rf plex;
# curl -L -o plex.zip $LOCATION_PLEX;
# unzip -o plex.zip -d $(pwd)/fonts/sources/
# rm plex.zip

