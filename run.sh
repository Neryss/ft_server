docker build . -t test
docker run --rm -ti -p 80:80 --name test test
