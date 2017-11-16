# lora_gateway
# AI LoRa Internet

CC=g++
CFLAGS=-c -Wall
LIBS=-lwiringPi -lpaho-mqtt3c

all: lora_gateway

lora_gateway: base64.o main.o
	$(CC) main.o base64.o $(LIBS) -o lora_gateway

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

base64.o: base64.c
	$(CC) $(CFLAGS) base64.c

clean:
	rm *.o lora_gateway	