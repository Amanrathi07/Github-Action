FROM oven/bun:alpine

WORKDIR /nextjs

COPY package.* .

RUN bun install

COPY . .

EXPOSE 3000

CMD [ "bun","run","dev" ]