import 'dart:math';

import 'package:apexology/constants/assets.dart';
import 'package:apexology/constants/endpoints.dart';
import 'package:apexology/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyAssets
                    .splashList[Random().nextInt(MyAssets.splashList.length)]),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black26, Colors.black87])),
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to Apexology!',
                              style: MyTextStyles.header,
                            ),
                            const SizedBox(height: 10),
                            Text('Log in or Sign up to continue.',
                                style: MyTextStyles.body),
                            const SizedBox(height: 20),
                            Center(
                                child: SignInButtonBuilder(
                              text: 'Get going with Email',
                              icon: Icons.email,
                              onPressed: () {},
                              backgroundColor: Colors.blueGrey[700]!,
                              width: 220.0,
                            )),
                            const SizedBox(height: 10),
                            Center(
                              child: SignInButton(
                                Buttons.Google,
                                onPressed: () {},
                              ),
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () async {
                                  await launchUrlString(
                                      MyEndpoints.privacyPolicy,
                                      mode: LaunchMode.inAppWebView);
                                },
                                child: Text(
                                  'Read our privacy policy',
                                  style: MyTextStyles.link,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        // Images from Alpha Coders website, contribution to AlphaSystem
        // https://alphacoders.com/users/profile/18905

        // Animation widget for animating the Login / Sign up button
        // AnimatedCrossFade(
        //     firstChild: LoginButton(),
        //     secondChild: LoginForm,
        //     crossFadeState:
        //         isLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        //     duration: Duration(milliseconds: 300)),
      ),
    );
  }
}
