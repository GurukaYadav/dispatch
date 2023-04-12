FROM golang
RUN useradd roboshop
RUN mkdir /app
WORKDIR /app
COPY main.go /app
COPY dispatch /app
RUN chown roboshop:roboshop -R /app
USER roboshop
ENTRYPOINT ["/app/dispatch"]