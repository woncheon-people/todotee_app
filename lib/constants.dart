import 'dart:io';

class Constants {
  static final String apiRoute =
      Platform.isAndroid ? 'http://10.0.2.2:8080' : 'http://127.0.0.1:8080';
}
