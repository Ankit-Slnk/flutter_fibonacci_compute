import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ComputeExample extends StatefulWidget {
  const ComputeExample({super.key});

  @override
  ComputeExampleState createState() => ComputeExampleState();
}

class ComputeExampleState extends State<ComputeExample> {
  String _result = "Result will appear here";
  bool _isProcessing = false;

  // Function to calculate Fibonacci (just as an example of a CPU-intensive task)
  static int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  // Function to start the computation using compute
  Future<void> _startCompute() async {
    setState(() {
      _isProcessing = true;
      _result = "Processing...";
    });

    // Use compute to run the Fibonacci calculation in a background isolate
    int result = await compute(fibonacci, 40); // Fibonacci(40) is a heavy task

    setState(() {
      _result = "Fibonacci(40) = $result";
      _isProcessing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Compute Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isProcessing) const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isProcessing ? null : _startCompute,
              child: const Text("Start Calculation"),
            ),
          ],
        ),
      ),
    );
  }
}
