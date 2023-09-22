FROM alpine:latest


WORKDIR /app
RUN apt update -y
RUN apt install nodejs -y
RUN apt install npm -y

RUN npm install express

COPY . /app

EXPOSE 3000

CMD [ “node”, “app.js” ]
