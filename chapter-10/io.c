#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>

int main(void) {
  int st;
  int fd = open("./text.txt", O_RDONLY, 0);
  char example[20];
  while(read(STDIN_FILENO, example, 20) > 0) {

  } 
  if (st == -1) {
    fprintf(stderr, "Read Error: %s", strerror(errno));
    exit(0);
  }
    
  st = write(STDOUT_FILENO, example, 20);
  if (st == -1) {
    fprintf(stderr, "Write Error: %s", strerror(errno));
    exit(0);
  }
  return 0;
}