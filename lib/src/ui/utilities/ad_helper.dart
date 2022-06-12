class AdHelper {
  AdHelper._();

  static AdHelper? _instance;

  static AdHelper get instance {
    return _instance ??= AdHelper._();
  }

  bool _test = true;

  void configure({final bool? test}) {
    if (test == null) return;
    _test = test;
  }

  String get bannerAdId {
    if (_test) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return 'ca-app-pub-2503192367716639/1298846983';
  }
}
