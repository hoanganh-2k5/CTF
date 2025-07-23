//g++ -o cpp_string cpp_string.cpp
#include <iostream>
#include <fstream>
#include <csignal>
#include <unistd.h>
#include <stdlib.h>

using namespace std;

char readbuffer[64] = {0, };
char flag[64] = {0, };
string writebuffer;

void alarm_handler(int trash)
{
    cout << "TIME OUT" << endl;
    exit(-1);
}

void initialize()
{
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);

    signal(SIGALRM, alarm_handler);
    alarm(30);
}

int read_file(){
	ifstream is ("test", ifstream::binary);
	if(is.is_open()){
        	is.read(readbuffer, sizeof(readbuffer));
		is.close();

		cout << "Read complete!" << endl;
        	return 0;
	}
	else{
        	cout << "No testfile...exiting.." << endl;
        	exit(0);
	}
}

int write_file(){
	ofstream of ("test", ifstream::binary);
	if(of.is_open()){
		cout << "Enter file contents : ";
        	cin >> writebuffer;
		of.write(writebuffer.c_str(), sizeof(readbuffer));
                of.close();
		cout << "Write complete!" << endl;
        	return 0;
	}
	else{
		cout << "Open error!" << endl;
		exit(0);
	}
}

int read_flag(){
        ifstream is ("flag", ifstream::binary);
        if(is.is_open()){
                is.read(flag, sizeof(readbuffer));
                is.close();
                return 0;
        }
        else{
		cout << "You must need flagfile.." << endl;
                exit(0);
        }
}

int show_contents(){
	cout << "contents : ";
	cout << readbuffer << endl;
	return 0;
}

int main(void) {
    initialize();
    int selector = 0;
    while(1){
    	cout << "Simple file system" << endl;
    	cout << "1. read file" << endl;
    	cout << "2. write file" << endl;
	cout << "3. show contents" << endl;
    	cout << "4. quit" << endl;
    	cout << "[*] input : ";
	cin >> selector;
	
	switch(selector){
		case 1:
			read_flag();
			read_file();
			break;
		case 2:
			write_file();
			break;
		case 3:
			show_contents();
			break;
		case 4:
			cout << "BYEBYE" << endl;
			exit(0);
		}
    }
}

