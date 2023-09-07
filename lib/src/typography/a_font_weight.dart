import 'dart:ui';

class AFontWeight {
  const AFontWeight._(this.value);
  final FontWeight value;

  static const regular = AFontWeight._(FontWeight.w400);
  static const medium = AFontWeight._(FontWeight.w500);
  static const semibold = AFontWeight._(FontWeight.w600);
  static const bold = AFontWeight._(FontWeight.w700);
}
