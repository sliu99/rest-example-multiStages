#/bin/sh
echo "Sam"
docker run -d --name rest-example-container -p 8080:8080 rest-example
