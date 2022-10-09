FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY . .
ENTRYPOINT [ "/app/main.sh", "workforce_job_listing.csv"]