import 'package:flutter/material.dart';

class AppRadius {
  static const sm = 8.0;
  static const md = 12.0;
  static const lg = 16.0;
  static const xl = 32.0;
  static const xxl = 48.0;

  static const small = BorderRadius.all(Radius.circular(sm));
  static const medium = BorderRadius.all(Radius.circular(md));
  static const large = BorderRadius.all(Radius.circular(lg));
  static const extraLarge = BorderRadius.all(Radius.circular(xl));
  static const extraExtraLarge = BorderRadius.all(Radius.circular(xxl));
}
