FROM golang:1.18 as build
WORKDIR /app
COPY .  .
RUN go build -o hello

FROM scratch
WORKDIR /app 
COPY --from=build /app .
CMD ["./hello"]