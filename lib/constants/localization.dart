import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization extends Translations {
  static Locale? get locale => Get.deviceLocale;

  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'hr': hr,
      };

  final en = {
    'appName': 'Apexology',
    'noInternet': 'No internet connection detected.',
    'reconnected': 'Successfully reconnected to the internet.',
    'email': 'Email',
    'password': 'Password',
    'loginWithEmail': 'Login with Email',
    'signupWithEmail': 'Sign up with Email',
    'welcomeToApexology': 'Welcome to Apexology',
    'chooseOptions': 'Choose one of the options below',
    'noAccount': "Don't have an account? ",
    'signUp': 'Sign up',
    'yesAccount': 'Already have an account? ',
    'logIn': 'Log in',
    'continueWithEmail': 'Continue with Email',
    'continueWithGoogle': 'Continue with Google',
    'privacyPolicy1': 'By signing up you accept our ',
    'privacyPolicy2': 'privacy policy',
    'imageContribution': 'Image contribution to ',
    'imageContribution2': 'AlphaSystem',
    'invalidPassword':
        'The password is invalid or the user does not have a password.',
    'userNotFound': 'An account with this email does not exist.',
    'disabledEmail': 'The email for this account has been disabled.',
    'invalidEmail': 'Please enter a valid email address.',
    'formError': 'An error occurred, please check your credentials.',
    'betterCredentials': 'Please provide a better email & password.',
    'weakPassword': 'Please provide a stronger password.',
    'emailAlreadyInUse': 'An account with this email already exists.',
  };

  final hr = {
    'appName': 'Apeksologija',
  };
}
