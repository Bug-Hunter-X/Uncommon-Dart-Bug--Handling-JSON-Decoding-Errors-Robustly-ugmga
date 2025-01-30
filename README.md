# Uncommon Dart Bug: Handling JSON Decoding Errors Robustly

This repository showcases a common but often overlooked issue in Dart when handling JSON responses from network requests: the potential for `jsonDecode` to throw an exception due to invalid or unexpected JSON data.  The example demonstrates a naive approach and provides an improved solution. 

## The Problem

The `bug.dart` file contains a function that fetches JSON data from a network API. The error handling is basic and simply prints the exception. This leaves room for improvement in handling various potential exceptions during JSON parsing.

## The Solution

The `bugSolution.dart` file enhances the error handling. It adds specific checks to handle `FormatException` during JSON decoding.  It provides more informative error messages and prevents the app from crashing due to unforeseen JSON structures.

## How to reproduce

1. Clone the repo.
2. Run `bug.dart` and observe the basic error handling.
3. Run `bugSolution.dart` and observe the improved error handling.