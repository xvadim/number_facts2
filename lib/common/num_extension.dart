extension NumExtensions on num {
  /// Checks that this value can be represented as int
  bool get isInt => (this % 1) == 0;
}
