## Compute vs Isolate

| Feature             | **`compute`**                                 | **Isolate**                                    |
|---------------------|-----------------------------------------------|------------------------------------------------|
| **Concurrency**      | Runs on a background isolate                  | Runs on a separate isolate                     |
| **Memory Sharing**   | Uses message-passing (serialized data)        | Does not share memory; uses message passing    |
| **Complexity**       | Simplified interface                         | More complex, requires manual management       |
| **Performance**      | Lightweight and optimized for simple tasks    | Can be heavyweight with more control           |
| **Use Case**         | Simple, offloading computational tasks        | More control and flexibility for complex tasks |

---
## Future vs Isolate

| **Feature**              | **Future**                           | **Isolate**                              |
|--------------------------|--------------------------------------|------------------------------------------|
| **Concurrency Model**     | Single-threaded (asynchronous)       | Multi-threaded (parallel processing)     |
| **Use Case**              | Non-blocking I/O, async tasks        | Heavy CPU tasks, parallel processing     |
| **Communication**         | Direct result (via `await`)          | Message passing (via ports)              |
| **Execution Context**     | Runs in the same isolate (main thread)| Runs in a separate isolate               |
| **Memory**                | Shared memory between isolates       | Independent memory per isolate           |
| **Error Handling**        | Standard try/catch for async errors  | Custom error handling for each isolate   |
| **Example**               | `Future.delayed()`, async HTTP calls | Image processing, data crunching         |

