```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle the error
    print('Error: $e');
    rethrow; // Re-throw the error to be handled by a higher-level function
  }
}
```