docker login
docker build -t web1-boccadf .
docker images
docker run -d -p 81:80 web1-boccadf:latest
curl localhost:81
mv index.html web/
curl localhost:81
docker build -t parcial2-boccadf .
docker images
docker run -d -p 8080:80 parcial2-boccadf
docker push crxw/parcial2-boccadf:latest
