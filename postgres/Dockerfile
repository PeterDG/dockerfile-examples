##Main Option
FROM postgres:9.4
MAINTAINER Peter

ENV PG_VERSION 9.4
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV PGDATA /var/lib/postgresql/data/main
ENV POSTGRES_DB postgres
ENV USER afrecikuxltyaz
ENV PASS t5FM4btYfK38Kj2WmlFP1Wdd-w

ADD start.sh /docker-entrypoint-initdb.d/start.sh

ADD setup-db.sql /docker-entrypoint-initdb.d/setup-db.sql
ADD setup-tables.sql /docker-entrypoint-initdb.d/setup-tables.sql

###Option 1
#FROM komljen/ubuntu
#MAINTAINER Alen Komljen <alen.komljen@live.com>
#
#ENV PG_VERSION 9.3
#ENV USER docker
#ENV PASS SiHRDZ3Tt13uVVyH0ZST
#
#RUN \
#  echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" \
#       > /etc/apt/sources.list.d/pgdg.list && \
#  curl -sL https://www.postgresql.org/media/keys/ACCC4CF8.asc \
#       | apt-key add - && \
#  apt-get update && \
#  apt-get -y install \
#          postgresql-${PG_VERSION} \
#          postgresql-contrib-${PG_VERSION} && \
#  rm -rf /var/lib/apt/lists/*
#
#COPY start.sh start.sh
#
#RUN rm /usr/sbin/policy-rc.d
#CMD ["/start.sh"]
#
#EXPOSE 5432

#
# example Dockerfile for https://docs.docker.com/examples/postgresql_service/
#


##Option 2
#FROM ubuntu
#MAINTAINER SvenDowideit@docker.com
#
## Add the PostgreSQL PGP key to verify their Debian packages.
## It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc
#RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
#
## Add PostgreSQL's repository. It contains the most recent stable release
##     of PostgreSQL, ``9.3``.
#RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
#
## Install ``python-software-properties``, ``software-properties-common`` and PostgreSQL 9.3
##  There are some warnings (in red) that show up during the build. You can hide
##  them by prefixing each apt-get statement with DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get install -y python-software-properties software-properties-common postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3
#
## Note: The official Debian and Ubuntu images automatically ``apt-get clean``
## after each ``apt-get``
#
## Run the rest of the commands as the ``postgres`` user created by the ``postgres-9.3`` package when it was ``apt-get installed``
#USER postgres
#
## Create a PostgreSQL role named ``docker`` with ``docker`` as the password and
## then create a database `docker` owned by the ``docker`` role.
## Note: here we use ``&&\`` to run commands one after the other - the ``\``
##       allows the RUN command to span multiple lines.
#RUN    /etc/init.d/postgresql start &&\
#    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
#    createdb -O docker docker
#
## Adjust PostgreSQL configuration so that remote connections to the
## database are possible.
#RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf
#
## And add ``listen_addresses`` to ``/etc/postgresql/9.3/main/postgresql.conf``
#RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf
#
## Expose the PostgreSQL port
#EXPOSE 5432
#
## Add VOLUMEs to allow backup of config, logs and databases
#VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]
#
## Set the default command to run when starting the container
#CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]