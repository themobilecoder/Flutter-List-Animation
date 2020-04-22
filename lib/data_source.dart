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
    'Sweden',
    'New Zealand',
    'Uruguay',
  ];

  Future<List<String>> getCountriesFuture() {
    return Future.value(_countries);
  }
}
