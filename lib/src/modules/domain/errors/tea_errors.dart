class TeaErrors {
  TeaErrors._({this.message = ''});

  final String message;

  factory TeaErrors.server({String message = ''}) =>
      TeaErrors._(message: message);

  factory TeaErrors.unexpected() => TeaErrors._();
}
