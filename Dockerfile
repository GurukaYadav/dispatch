FROM golang
RUN useradd roboshop
RUN mkdir /app
RUN chown roboshop:roboshop -R /app
WORKDIR /app
USER roboshop
COPY main.go /app
COPY dispatch /app
ENTRYPOINT ["/app/dispatch"]