#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>


void menu(){
    printf("__________________\n");
    printf("1. Add command\n");
    printf("2. Get command\n");
    printf("3. Submmit command\n");
    printf("4. Exit\n");
    return;
}


void menu_add(){
    printf("---Add command---\n");
    printf("1. Small size command\n");
    printf("2. Medium size command\n");
    printf("3. Big size command\n");
    printf("4. return main menu\n");
}

typedef struct vectorrrr{
    void (* destructor)(struct vectorrrr*);
    int (* length)(struct vectorrrr*);
    int (* grow)(struct vectorrrr*,int);
    int total_size;
    int inuse;
    char *data;
} vectorrrr;

int lengthVT(vectorrrr* vector){
    return vector->inuse; 
}

void destructor(vectorrrr* vector){
    if(vector->data)
        free(vector->data);

    free(vector);
    return;
}

int grow(vectorrrr* vector,int a2){ 
    printf("here %d %d\n",vector->inuse,vector->total_size);

    int v3 = a2 + vector->inuse;
    if ( v3 < a2 )
        return -2;
    if ( v3 <= vector->total_size )
        return 0;
    int v4 = (v3 & ~0xff) + 0x100;
    printf("size now 0x%x\n",v4);
    if (v4 > 0x2000){
        return -1;
    }
    
    char* tmp_dt = (char*)malloc(v4);
    if (!(vector->data)){
        vector->data = tmp_dt;
        vector->total_size = v4;
        vector->inuse = 0;
        return 0;
    }

    memcpy(tmp_dt,vector->data,vector->inuse);
    vector->data = tmp_dt;
    vector->total_size = v4;
    return 0;
}

void constructor(vectorrrr* vector){
    vector->inuse = 0;
    vector->total_size = 0x10;
    vector->data = (char*)malloc(0x10);
    vector->length = lengthVT;
    vector->grow = grow;
    vector->destructor = destructor;
    return;
}


typedef struct CMD{
    vectorrrr* sz;
    vectorrrr* buf;
}CMD;

CMD *cmd = NULL;

void init_cmd(){
    cmd = (CMD*)malloc(sizeof(CMD));
    cmd->buf = (vectorrrr*)malloc(sizeof(vectorrrr));
    constructor(cmd->buf);
    cmd->sz = (vectorrrr*)malloc(sizeof(vectorrrr));
    constructor(cmd->sz);
    
}

int add_one(vectorrrr *vec,int S,int off){
    int result = vec->grow(vec,8);
    if (result >= 0){
        char *cur = (char*)(vec->data + vec->inuse);
        *(int*)((char*)cur) = S;
        *(int*)((char*)cur + 4) = off;
        vec->inuse += 8;
        return result;
    }
    return result;
}

int command_internal(int S,char* cmdT){
    int result = add_one(cmd->sz,S,cmd->buf->inuse);
    if(result >= 0){
        int len = strlen(cmdT);
    
        result = grow(cmd->buf,S*0x100);
        if(result >= 0){
            char *cur = (cmd->buf->inuse + cmd->buf->data);
            if ((S*0x100) >= len){
                memcpy(cmd->buf->data, cmdT, len);
            }
            else{
                memcpy(cmd->buf->data, cmdT, S*0x100);
            }

            cmd->buf->inuse += S*0x100;
            return result;
        }
        return 0;

    }
    return result;
}


void add_command(){
    
    char tmp_buff[0x10] = {};
    int option = 0;
    while (1){
        menu_add();
        fgets(tmp_buff,10,stdin);
        option = atoi(tmp_buff);
        switch(option){
            case 1:
            case 2:
            case 3:
                printf("Command(createfile a.txt, deletefile b.txt, readfile c.txt) : ");
                char commandtext[0x400] = {};
                fgets(commandtext,0x400,stdin);
                int result = command_internal(option,commandtext);
                printf("result %d\n",result);
                break;
            case 4:
                return;
                break;
            default:
                printf("not exist~\n");
                break;
        }
    }

    return;
}

void get_command(){
    printf("enter idx command (start = 0): ");
    char tmp_buff[0x10] = {};
    int option = 0;
    fgets(tmp_buff,10,stdin);
    option = atoi(tmp_buff);
    if(cmd->sz->inuse >0){
        int max_idx_now = (cmd->sz->inuse / 8);
        if (max_idx_now > option){
           int cmd_info_s = *(int*)(cmd->sz->data + option*8);
           int cmd_info_off = *(int*)(cmd->sz->data + option*8 + 4);
           write(1,cmd->buf->data + cmd_info_off, cmd_info_s * 0x100);
           return 0;
        }
    }
    
    printf("not exist cmd\n");
    return;
}

void submit_command(){
    if(cmd->sz->inuse == 0){
        return;
    }
    printf("Process command ...\n");
    int max_idx_now = (cmd->sz->inuse / 8);
    int i = 0;
    for (i; i < max_idx_now; i++){
        int cmd_info_s = *(int*)(cmd->sz->data + i*8);
        int cmd_info_off = *(int*)(cmd->sz->data + i*8 + 4);
        char tmp[0x500] = {};
        sprintf(tmp,"cat %d%s%d%c",cmd->buf->data + cmd_info_off,"113",cmd->buf->data + cmd_info_off,cmd->buf->data + cmd_info_off);
        system(tmp);
        
    }
}

int main(){
    init_cmd();
    char tmp_buff[0x10] = {};
    int option = 0;
    while (1){
        menu();
        fgets(tmp_buff,10,stdin);
        option = atoi(tmp_buff);
        switch(option){
            case 1:
                add_command();
                break;
            case 2:
                get_command();
                break;
            case 3:
                submit_command();
            default:
                printf("not exist~\n");
                break;
        }
    }

    return 0;
}