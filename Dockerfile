FROM debian:bullseye
#install curl
RUN apt-get update && apt-get install -y curl
#download and extract golang-migrate binary
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.1/migrate.linux-amd64.tar.gz | tar xvz
#copy migrations
COPY ./migrations/* ./migrations/
#copy migration script
COPY ./migrate.sh ./migrate.sh
#make executable and run
RUN chmod +x migrate.sh
CMD ["./migrate.sh"]