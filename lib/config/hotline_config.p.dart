class HotlineConfig {
  HotlineConfig._();
  static const phoneDisplay = '1900 1000';
  static get phone => phoneDisplay.replaceAll(' ', '');
}
