#include <sys/types.h>
#include <unistd.h>


/*
----------------------

c```
pid_t getpid(void);
pid_t getppid(void);
```

These two functions return an int value of type pid_t of 
the positive nonzero Process ID or PID of a process. The first
is of the calling process, the second is of the calling
process's parent.
----------------------

----------------------
A process will always either be running, stopped or 
terminated.

running: currently being run or scheduled to run by the CPU
stopped: given one of the signals that pauses the running of
a program and removes it from being scheduled until a SIGCONT
signal is given to it.
terminated: given a signal that defaults to termination, it 
was done running on it's own or the following function was 
used.

c```
void exit(int status);
```
----------------------

----------------------
c```
pid_t fork(void);
```
This function creates an identical child process of the 
current running process, returning 0 to the child process, 
the child process's pid to the parent, and -1 if there's an 
error

They have identical yet different address spaces, and they 
share files
----------------------

----------------------
A terminated process still exists until it's _reaped_ by it's 
parent. Until it's been reaped, it's known as a _zombie_. If a parent terminates then it's children are adopted by the `init` process, the first process that runs when a unix computer turns on. if it terminates with zombie children, `init` is also responsible for their reaping.

c```
pid_t waitpid(pid_t pid, int *statusp, int options);
```

This function allows for the parent process to wait for a status change, stop or usually terminate, for the parent process to continue execution.
----------------------

----------------------
c```
unsigned int sleep(unsigned int secs);
```

This function functions allows for the suspension of a process for a specified time interval. sleep will return 0 if all the time has elapsed or the amount of time remaining if a signal interrupts it.
----------------------

----------------------
c```
int execve(const char *filename, cnost char *argv[],
           const char *envp[]);
```

This function allows for the execution of a program of the name `filename`, with the argument list `argv` and the enviornment variables `envp`.
----------------------



*/