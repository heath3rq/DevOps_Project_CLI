FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY . .
ENTRYPOINT [ "/app/main.sh", "Workforce1_Job_Listing.csv"]