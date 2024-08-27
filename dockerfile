FROM n8nio/n8n

RUN apt-get update && apt-get install -y postgresql-client

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

CMD ["/bin/sh", "-c", "/wait-for-it.sh postgres:5432 -- /wait-for-it.sh redis:6379 -- npm start"]