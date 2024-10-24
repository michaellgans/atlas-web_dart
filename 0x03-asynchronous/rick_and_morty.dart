// Task 5 - Rick and Morty Characters

// Import
import "dart:convert";
import "package:http/http.dart" as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      List<dynamic> characters = data['results'];
      for (var name in characters) {
        print(name["name"]);
      }
    }
  } catch (error) {
    print("error caught: error");
  }
}
