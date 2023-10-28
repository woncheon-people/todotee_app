import 'dart:convert';
import 'dart:io';

import 'package:todotee_app/constants.dart';
import 'package:todotee_app/dto/todo_request_dto.dart';

class TodoApi {
  final HttpClient client;

  TodoApi({required this.client});

  Future<void> create(TodoRequestDto body) async {
    Uri uri = Uri.parse("${Constants.apiRoute}/todos");
    HttpClientRequest request = await client.postUrl(uri);

    request.headers.contentType = ContentType.json;
    request.write(jsonEncode(body));

    await request.close();
  }

  Future<List<dynamic>> getTodos() async {
    Uri uri = Uri.parse("${Constants.apiRoute}/todos");
    HttpClientRequest request = await client.getUrl(uri);
    HttpClientResponse response = await request.close();

    final String jsonString = await response.transform(utf8.decoder).join();
    final List<dynamic> data = jsonDecode(jsonString);

    return data;
  }

  Future<Map<String, dynamic>> getTodoById(int id) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/todos/$id');
    HttpClientRequest request = await client.getUrl(uri);
    HttpClientResponse response = await request.close();

    final String jsonString = await response.transform(utf8.decoder).join();
    final Map<String, dynamic> data = jsonDecode(jsonString);
    return data;
  }

  Future modifyTodo(int id, TodoRequestDto body) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/todos/$id');
    HttpClientRequest request = await client.patchUrl(uri);

    request.headers.contentType = ContentType.json;
    request.write(jsonEncode(body));

    await request.close();
  }

  Future deleteTodoById(int id) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/todos/$id');
    HttpClientRequest request = await client.deleteUrl(uri);

    await request.close();
  }
}
