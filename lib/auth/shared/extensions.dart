extension FormatEx on String {
  String get postalCodeFormat => '〒${substring(0, 3)}-${substring(3)}';
  String get phoneNumberFormat {
    //length = 10 -> {xx}-{yyyy}-{zzzz}
    //length = 11 -> {xxx}-{yyyy}-{zzzz}
    return '${substring(0, length - 8)}-${substring(length - 8, length - 4)}-${substring(length - 4)}';
  }
}
