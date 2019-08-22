SRCS=$(wildcard *.c)
OBJS=$(patsubst %.c,%.o,$(SRCS))
CFLAGS = -O2 -g -Wall -fmessage-length=0
LIBS = -lwiringPi

TARGET =

objects = UART_USB UART_HEX
all: $(objects)

$(objects): %: %.c
	$(CC) $(CFLAGS) $(LIBS) -o $@ $<
 

clean:
	rm -f $(objects)
