FROM golang:1.22
WORKDIR /usr/src/app
COPY . .
RUN go mod download
RUN go build -o main
CMD [ "./main" ]
LABEL authors="sysop"
