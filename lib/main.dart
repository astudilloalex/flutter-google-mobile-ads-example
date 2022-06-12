import 'package:flutter/material.dart';
import 'package:google_ads_example/src/ui/pages/home/home_page.dart';
import 'package:google_ads_example/src/ui/pages/sign_in/sign_in_page.dart';
import 'package:google_ads_example/src/ui/utilities/ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  AdHelper.instance.configure(test: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobile Ads',
      initialRoute: '/sign-in',
      routes: {
        '/home': (_) => const HomePage(),
        '/sign-in': (_) => const SignInPage(),
      },
    );
  }
}
