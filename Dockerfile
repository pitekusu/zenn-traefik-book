FROM node:14
WORKDIR /work
RUN yarn global add zenn-cli@latest

CMD ["npx", "zenn", "preview"]
