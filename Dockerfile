FROM golang:1.21-alpine
WORKDIR /app
EXPOSE 80

COPY hello.go ./
ENV GO111MODULE=off
RUN go build -o hello-app .

CMD [ "./hello-app" ]