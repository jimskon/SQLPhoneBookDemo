#MakeFile to build and deploy the Sample US CENSUS Name Data using ajax
# For CSC3004 Software Development

# Put your user name below:
USER= skon

CC= g++

#For Optimization
#CFLAGS= -O2
#For debugging
CFLAGS= -std=c++11

RM= /bin/rm -f

all: writePhone readPhone findPhone

writePhone: writePhone.cpp
	$(CC) -Wall -L/usr/lib -I/usr/include/cppconn -o writePhone writePhone.cpp -lmysqlcppconn

readPhone: readPhone.cpp
	$(CC) -Wall -L/usr/lib -I/usr/include/cppconn -o readPhone readPhone.cpp -lmysqlcppconn

findPhone: findPhone.cpp
	$(CC) -Wall -L/usr/lib -I/usr/include/cppconn -o findPhone findPhone.cpp -lmysqlcppconn

clean:
	rm -f *.o  writePhone readPhone findPhone
