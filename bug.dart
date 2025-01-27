```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Consider re-throwing or providing a default value
    // rethrow; // If you want to propagate the error
  }
}
```