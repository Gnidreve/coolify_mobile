import 'package:flutter/widgets.dart';

abstract final class AppSpacing {
  static const double page = 16;
  static const double section = 16;
  static const double item = 12;
  static const double compact = 8;
  static const double cardPadding = 16;

  static const EdgeInsets pageInsets = EdgeInsets.all(page);
  static const EdgeInsets cardInsets = EdgeInsets.all(cardPadding);
}
