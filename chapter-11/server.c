#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <netdb.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h> 

#define MAXLINE 100

int open_tcp_listenfd();
int open_tcp_connectionfd(int);

int main() {
    int listenfd = open_tcp_listenfd(); 
    struct sockaddr clientaddr;
    socklen_t clientaddrlen;
    int connfd = accept(listenfd, &clientaddr, &clientaddrlen);
    if (close(listenfd) == -1) {
        perror("close");
    }
    printf("closed listenfd %d\nconnfd: %d\n", listenfd, connfd);
    char buff[MAXLINE];
    int number_read;
    while ((number_read = read(connfd, buff, MAXLINE)) > 0) {
        write(connfd, buff, number_read);
    }
    printf("text from client: %s", buff);

    return 0;
}

int open_tcp_listenfd() {
    struct addrinfo *list, hints, *p;
    int err, listenfd, optval=1;

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_INET;
    hints.ai_flags = AI_PASSIVE;
    hints.ai_socktype = SOCK_STREAM;
    err = getaddrinfo(NULL, "80", &hints, &list);

    if (err != 0) {
        fprintf(stderr, "getaddrinfo error %d: %s",err, gai_strerror(err));
    }


    for (p = list; p; p = p->ai_next) {
        if ((listenfd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) < 0) {
            perror("socket");
            continue;
        }

        if(setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (const void *)&optval, sizeof(int)) != 0) {
            perror("setsockopt (SO_REUSEADOR)");
        }
        
        if (bind(listenfd, p->ai_addr, p->ai_addrlen) != 0) {
            perror("bind");
            continue;
        }
        break;
    }

    if (!p)
        return -1; 

    if (listen(listenfd, 1024) != 0) {
        perror("listen");    
        if (close(listenfd) != 0)
            perror("close(listenfd) error");
        return -1;
    }
    return listenfd;
}