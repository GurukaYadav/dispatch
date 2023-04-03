FROM golang
RUN useradd roboshop
RUN mkdir /app
RUN chown roboshop /app
WORKDIR /app
USER roboshop
COPY main.go .
COPY dispatch .
ENTRYPOINT ["dispatch"]