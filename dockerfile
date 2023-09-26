FROM alpine


WORKDIR /app
RUN apk update
RUN apk add nodejs  
RUN apk add npm 

RUN npm install express

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]

