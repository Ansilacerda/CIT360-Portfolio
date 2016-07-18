#Threads, Executors, Runnables, Handlers
**Thread** - is a concurrent unit of execution. It has its own call stack for methods being invoked, their arguments and local variables. Each application has at least one thread running when it is started, the main thread, in the main ThreadGroup.

**Executor** - An object that executes submitted Runnable tasks. This interface provides a way of decoupling task submission from the mechanics of how each task will be run, including details of thread use, scheduling, etc.

**Handler** - A Handler allows you to send and process Message and Runnable objects associated with a thread's MessageQueue. Each Handler instance is associated with a single thread and that thread's message queue.

**Runnable** - separates code that needs to run asynchronously, from how the code is run. This keeps your code flexible. For instance, asynchronous code in a runnable can run on a threadpool, or a dedicated thread. Represents a command that can be executed. Often used to run code in a different Thread.

Code URL:

[https://github.com/Hively-Dan/CIT360-Portfolio/tree/master/Threads%20-%20Executors%20-%20Runnables%20-%20Handlers/Sandbox-Mine]()

