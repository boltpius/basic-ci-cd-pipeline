FROM ubuntu


WORKDIR /app
RUN apt update -y
RUN apt install nodejs -y 
RUN apt install npm -y

RUN npm install express

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]

