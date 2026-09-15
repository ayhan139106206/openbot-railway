FROM oven/bun:1.3

WORKDIR /app

RUN git clone https://github.com/CopilotKit/OpenBot.git .

RUN bun install

ENV NODE_ENV=production
ENV PORT=3001

EXPOSE 3001

CMD ["bun", "run", "start"]
