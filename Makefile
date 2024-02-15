 # /
 # @file Makefile
 # @author Seth Rivers
 # @date 2024-02-15
 # @brief A makefile for the Makefile & Makefiles assignment; designed after the provided Employees.zip
 # folder
 # 
 # 
 # /

#Defines the compiler 
CC = g++

#Compile with all errors and warnings
CFLAGS = -g -Wall -Wextra -c

#Links the .o files together 
TARGET = employee

#Readies $(TARGET) for use in the following code 
all: $(TARGET)

#Marks all the files that will be compiled 
$(TARGET):	main.o Employee.o Officer.o Supervisor.o
		$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET) 

#Compiles the main.cpp file with all of the .h files 
main.o: 	main.cpp Employee.h Officer.h Supervisor.h
		$(CC) $(CFLAGS) main.cpp

#Compiles the Employee.cpp/.h files
Employee.o: 	Employee.h Employee.cpp
		$(CC) $(CFLAGS) Employee.cpp

#Compiles the Officer.cpp/.h files 
Officer.o: 	Officer.h Officer.cpp
		$(CC) $(CFLAGS) Officer.cpp

#Compiles the Supervisor.cpp/.h files
Suppervisor.o: 	Supervisor.h Supervisor.cpp
		$(CC) $(CFLAGS) Supervisor.cpp

#Cleans out any unnecaary items post compiling. 
clean:
		$(RM) *.o *~ employee
