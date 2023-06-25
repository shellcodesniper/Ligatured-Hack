# NOTE : ./download_data.sh First!

docker build . -t ligatured-hack
docker run -v $(pwd)/fonts/output:/usr/src/app/fonts/output ligatured-hack
