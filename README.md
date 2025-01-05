## Isolate vs Compute

| Feature             | **`compute`**                                 | **Isolate**                                    |
|---------------------|-----------------------------------------------|------------------------------------------------|
| **Concurrency**      | Runs on a background isolate                  | Runs on a separate isolate                     |
| **Memory Sharing**   | Uses message-passing (serialized data)        | Does not share memory; uses message passing    |
| **Complexity**       | Simplified interface                         | More complex, requires manual management       |
| **Performance**      | Lightweight and optimized for simple tasks    | Can be heavyweight with more control           |
| **Use Case**         | Simple, offloading computational tasks        | More control and flexibility for complex tasks |
