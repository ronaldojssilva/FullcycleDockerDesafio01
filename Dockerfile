FROM golang:1.18-alpine

# set destination for COPY
WORKDIR /app

# Download Go modules
COPY go.mod .
RUN go mod download

# Copy the source code.
COPY *.go ./

#Build
RUN go build -o /hello-world

#Run
CMD [ "/hello-world" ]