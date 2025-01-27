```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on SocketException {
    return null; // Handle network issues
  } catch (e) {
    print('An error occurred: $e');
    return null; // Or throw the error up, depends on app logic
  }
}
```