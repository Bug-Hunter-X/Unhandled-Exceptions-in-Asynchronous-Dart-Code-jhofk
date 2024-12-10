# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in asynchronous Dart programming: unhandled exceptions during network requests or other I/O operations.  The code includes a `try-catch` block for handling potential exceptions, but the crucial `rethrow` statement ensures that exceptions are propagated up the call stack for global error handling.

The `bug.dart` file shows the initial code with incomplete error handling.  `bugSolution.dart` provides a corrected version with improved exception management.

## How to Run
1. Clone this repository.
2. Run `bug.dart` and `bugSolution.dart` using your Dart SDK.
3. Observe the difference in how exceptions are handled in each case.