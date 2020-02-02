For the services.py it is needed to create an image from the present Dockerfile with :

docker build -t python-services .

After image is created

docker run python-services:latest



For MySql docker it is needed to run inside the directory :

docker-compose up

then to run the queries I used command line interface :

docker-compose exec  mysql-development mysql -uroot -ptestcase qamysql
