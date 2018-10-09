FROM alpine:latest

RUN apk add --no-cache gcc python musl-dev python2-dev py2-pip && \
     pip install pyserial tornado==4.5.3 multiprocessing

WORKDIR /src

COPY . .

CMD python /src/server.py

