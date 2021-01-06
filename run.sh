docker build . -t test
docker run --rm -ti -p 8080:80 --name test test
