import 'dart:math';

class GetRandomData {
  final random = Random();
  int? value;
  List tmp = [];

  String generateRandomString(int length) {
    const availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => availableChars[random.nextInt(availableChars.length)])
        .join();

    return randomString;
  }

  String generateRandomInt(int length) {
    const randint = '1234567890';
    final getdataint = List.generate(
        length, (index) => randint[random.nextInt(randint.length)]).join();
    return getdataint;
  }
}
