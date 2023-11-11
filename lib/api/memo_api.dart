import 'dart:convert';
import 'dart:io';

import 'package:todotee_app/constants.dart';
import 'package:todotee_app/dto/memo_request_dto.dart';

class MemoApi {
  final HttpClient client;

  MemoApi({required this.client});

  Future<Map<String, dynamic>> create(MemoRequestDto body) async {
    Uri uri = Uri.parse("${Constants.apiRoute}/memos");
    HttpClientRequest request = await client.postUrl(uri);

    request.headers.contentType = ContentType.json;
    request.write(jsonEncode(body));

    HttpClientResponse response = await request.close();

    final String jsonString = await response.transform(utf8.decoder).join();
    final Map<String, dynamic> data = jsonDecode(jsonString);

    return data;
  }

  Future<List<dynamic>> getMemos() async {
    Uri uri = Uri.parse("${Constants.apiRoute}/memos");
    HttpClientRequest request = await client.getUrl(uri);
    HttpClientResponse response = await request.close();

    final String jsonString = await response.transform(utf8.decoder).join();
    final List<dynamic> data = jsonDecode(jsonString);

    return data;
  }

  Future<Map<String, dynamic>> getMemoById(int id) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/memos/$id');
    HttpClientRequest request = await client.getUrl(uri);
    HttpClientResponse response = await request.close();

    final String jsonString = await response.transform(utf8.decoder).join();
    final Map<String, dynamic> data = jsonDecode(jsonString);
    return data;
  }

  Future modifyMemo(int id, MemoRequestDto body) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/memos/$id');
    HttpClientRequest request = await client.patchUrl(uri);

    request.headers.contentType = ContentType.json;
    request.write(jsonEncode(body));

    await request.close();
  }

  Future deleteMemoById(int id) async {
    Uri uri = Uri.parse('${Constants.apiRoute}/memos/$id');
    HttpClientRequest request = await client.deleteUrl(uri);

    await request.close();
  }
}
