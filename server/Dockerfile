FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm install -g wrangler
ENV PORT=8787
EXPOSE ${PORT}
CMD ["wrangler", "dev", "src/index.ts"]
