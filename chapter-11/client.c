#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <netdb.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h> 
#include <stdlib.h>

#define MAXLINE 100

int open_tcp_clientfd();

int main() {
    int number_read, clientfd = open_tcp_clientfd();
    printf("client socket: %d\n", clientfd);
    char buff[MAXLINE];
    
    char *string = "Hello world\n";
    write(clientfd, string, MAXLINE);
    
    number_read = read(clientfd, buff, MAXLINE - 1);
    printf("strlen of number_read: %d\n", number_read);
    

    if (number_read > 0) {
        buff[number_read] = '\0';
    }
    printf("buff: %s", buff);
}

int open_tcp_clientfd() {
    int err, clientfd;
    struct addrinfo hints, *listp, *p;

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;

    err = getaddrinfo("127.0.0.1", "80", &hints, &listp);
    if (err != 0) {
        fprintf(stderr, "open_clientfd getaddrinfo error: %s", gai_strerror(err));
    }

    for (p = listp; p; p = p->ai_next) {
        if ((clientfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0) {
            perror("socket");
            continue;
        }
        
        if (connect(clientfd, p->ai_addr, p->ai_addrlen) != -1) {
            printf("going to break");
            break;
        }
        perror("connect");
        printf("clientfd %D\n(no break)\n", clientfd);
        
        if (close(clientfd) != 0)
            perror("close(clientfd) error");
    }

    if (!p) return -1;
    freeaddrinfo(listp);
    return clientfd;
}