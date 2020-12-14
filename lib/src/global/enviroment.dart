import 'dart:io';

class Enviroment {
  static String apiURl = Platform.isAndroid
      ? 'http://172.22.32.12:3000/api'
      : 'http://localhost:3000/api';

  static String socketURl =
      Platform.isAndroid ? 'http://172.22.32.12:3000' : 'http://localhost:3000';
}
