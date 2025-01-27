# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling within asynchronous operations.  The `bug.dart` file contains code that fails to adequately handle exceptions thrown during a network request.  The `bugSolution.dart` file provides a corrected version with robust error handling.

## Problem

The original code lacks comprehensive exception handling.  If the network request fails (due to network issues, server errors, etc.), the exception is caught but not properly addressed. The application might not gracefully handle the failure or provide meaningful feedback to the user.  It may even leave resources in an inconsistent state.

## Solution

The improved code includes more robust error handling:

* **Explicitly checking response status codes:** The code checks the HTTP status code. Non-200 responses are treated as errors.
* **Specific error messages:**  More informative error messages provide context and aid debugging.
* **Considered re-throwing:** The example comments on the option of re-throwing the exception for higher-level handling if needed.