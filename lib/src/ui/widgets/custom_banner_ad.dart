import 'package:flutter/material.dart';
import 'package:google_ads_example/src/ui/utilities/ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CustomBannerAd extends StatefulWidget {
  const CustomBannerAd({
    Key? key,
    this.height = 50,
    this.width = 320,
  }) : super(key: key);

  final int height;
  final int width;

  @override
  State<CustomBannerAd> createState() => _CustomBannerAdState();
}

class _CustomBannerAdState extends State<CustomBannerAd> {
  late final BannerAd _bannerAd;
  bool _ready = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bannerAd = BannerAd(
      size: AdSize(width: widget.width, height: widget.height),
      adUnitId: AdHelper.instance.bannerAdId,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _ready = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          _ready = false;
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_ready) {
      return SizedBox(
        width: widget.width.toDouble(),
        height: widget.height.toDouble(),
        child: AdWidget(
          ad: _bannerAd,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
