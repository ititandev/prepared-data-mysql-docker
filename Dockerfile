FROM mysql:8.0-debian
ENV MYSQL_ROOT_PASSWORD=mysql1234
ENV MYSQL_DATABASE=workorder_db

RUN sed -i 's|/var/lib/mysql|/var/lib/mysql2|g' /etc/mysql/my.cnf

COPY init.sql /docker-entrypoint-initdb.d/00_init.sql
COPY stop.sh /docker-entrypoint-initdb.d/99_stop.sh

COPY shutdown.sh /shutdown.sh
RUN ["/bin/bash", "-c", "docker-entrypoint.sh mysqld & /shutdown.sh || true"]
RUN rm /docker-entrypoint-initdb.d/*
