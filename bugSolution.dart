```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process JSON data appropriately; Consider error handling within JSON parsing
    } else {
      // Instead of a generic exception, provide more context
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('Error decoding JSON: $e'); 
  } on SocketException catch (e) {
    // Handle network errors specifically 
    print('Network Error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Consider logging the error for debugging purposes
  }
}
```