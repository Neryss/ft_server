docker build . -t test
docker run --rm -ti -p 80:80 -p 443:443 --name test test
