FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm start --db mongodb+srv://rokhisahmad64:k52jlxF9jCQZj1Ub@rokhis.8eihmyf.mongodb.net/?retryWrites=true&w=majority"]
