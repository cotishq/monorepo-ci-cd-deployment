FROM oven/bun:latest

WORKDIR /usr/src/app

COPY . .

RUN bun install

RUN bun run generate:db

EXPOSE 8081

CMD [ "bun", "start:ws" ]