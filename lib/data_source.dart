import 'dart:async';

class DataSource {
  final List<String> _countries = [
    'Finland',
    'Australia',
    'India',
    'Chile',
    'Japan',
    'Indonesia',
    'Spain',
    'Canada',
    'Belarus',
    'Mongolia',
  ];

  Future<List<String>> getCountriesFuture() {
    return Future.value(_countries);
  }

  Stream<String> countriesStream() async* {
    for (var country in _countries) {
      yield country;
    }
  }
}
