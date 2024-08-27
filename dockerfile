FROM docker:dind

RUN apk add --no-cache docker-compose

COPY . .

CMD ["docker-compose", "up", "-d"]