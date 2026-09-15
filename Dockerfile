FROM oven/bun:1.3.14

WORKDIR /app

COPY . .

RUN bun install

RUN bun run build

ENV NODE_ENV=production
ENV PORT=3001

EXPOSE 3001

CMD ["bun", "run", "--filter", "server", "start"]
