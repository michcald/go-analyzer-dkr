FROM golangci/golangci-lint:v1.36.0

WORKDIR /app

COPY .golangci.yml /.golangci.yml

ADD entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]

CMD ["/entrypoint.sh"]
