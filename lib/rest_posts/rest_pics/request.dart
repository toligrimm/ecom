import 'package:ecom/rest_posts/rest_pics/parser.dart';
import 'package:ecom/rest_posts/rest_test.dart';
import 'package:http/http.dart' as http;

class Request {
  Future<List<Pics>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return picsFromJson(json);
    }
    return null;

  }
}