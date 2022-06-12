import 'package:flutter/material.dart';
import 'package:google_ads_example/src/ui/widgets/custom_banner_ad.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const CustomBannerAd(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => Navigator.of(context).pushNamed('/home'),
                      icon: const Icon(Icons.login_outlined),
                      label: const Text('Enter with Google'),
                    ),
                  ],
                ),
              ),
              const CustomBannerAd(),
            ],
          ),
        ),
      ),
    );
  }
}
