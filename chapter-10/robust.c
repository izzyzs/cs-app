#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

int main(void) {
    int fd = open("./request.txt", O_RDONLY, 0);
    char buffer[1024];
    int read = robust_read(fd, buffer, 1024);
    printf("read: %d\n", read);
    printf("%s\n", strerror(errno));
    return 0;
}

ssize_t robust_read(int file_descriptor, void *user_buffer, size_t n) {
/**
 * CS-APP's rio_readn function reimplemented with comments to cement understanding
 * regarding robust reading.
 * 
 * Comments written by me
*/
    ssize_t number_left = n;
    ssize_t number_read;
    char *buffer_pointer = user_buffer;

    while (number_left > 0) {
        if ((number_read = read(file_descriptor, buffer_pointer, number_left)) < 0) { // meaning if an error has occured while reading i.e., read() returns -1
            if (errno == EINTR) // check to see if the read system call has been blocked by an interrupt
                number_read = 0;
            else
                return -1; // errno has been set by read and there's some other reason for the error
        }
        else if (number_read == 0) // ran into an EOF
            break; // don't call it again;

        number_left -= number_read; // subtract the number of bytes successfully read from the number of bytes left to be read
        buffer_pointer += number_read; // increment the buffer pointer the number_read amount of bytes.
    }
    return (n - number_left); // returns the number of bytes filled bytes in the buffer in the case that there is nothing left to be read.
}