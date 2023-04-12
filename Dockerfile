FROM golang
RUN useradd roboshop
RUN mkdir /app
WORKDIR /app
COPY main.go .
COPY dispatch .
RUN chown roboshop:roboshop -R /app
USER roboshop
ENTRYPOINT ["/app/dispatch"]