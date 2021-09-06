import 'package:chat_app/constants/constants.dart';
import 'package:http/http.dart' as http;

class BaseRepoStory {
  String? baseUrl;
  BaseRepoStory() {
    baseUrl = RestfulConstant.BASE_URL;
  }

  /// Request for Post http.
  Future requestPostData(url, body) async {
    final urlParse = uriParse(url);
    final response = await http.post(urlParse, body: body);
    return response;
  }

  /// Request for Get http.
  Future requestGetData(url) async {
    final urlParse = uriParse(url);
    final response = await http.get(urlParse);
    return response;
  }

  Uri uriParse(url) => Uri.parse(baseUrl! + url);
}
