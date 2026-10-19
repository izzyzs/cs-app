#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>

int main(void) {
  int status;
  // int fd = open("./text.txt", O_RDONLY, 0);
  int fd = open("./request.txt", O_WRONLY, 0);
  char *example = "POST /api/users?role=admin&active=true HTTP/1.1\r\nHost: localhost:8080\r\nUser-Agent: MyHTTPClient/1.0\r\nAccept: application/json\r\nContent-Type: application/json\r\nContent-Length: 36\r\nConnection: keep-alive\r\nX-Request-ID: abc123\r\n\r\n{\"name\":\"Ismael\",\"age\":22,\"active\":true}";
  status = write(fd, example, 267);
  
  if (status == -1) {
    fprintf(stderr, "Write Error: %s", strerror(errno));
    exit(0);
  }
  // status = write(STDOUT_FILENO, example, 20);
  // if (status == -1) {
  //   fprintf(stderr, "Write Error: %s", strerror(errno));
  //   exit(0);
  // }
  return 0;
}