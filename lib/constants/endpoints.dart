///
/// This is a class where all endpoints are stored
/// You can then reference them in code with `MyEndpoints.someEndpoint`
///

class MyEndpoints {
  static const baseUrl = 'https://api.mozambiquehe.re/';
  static const apiKey = 'PwgNiFBihfCtESUXuMlk';
  static const testPlayer = 'Br0nzeGawD';
  static const testPlatform = 'PC';

  static const stats =
      'bridge?auth=$apiKey&player=$testPlayer&platform=$testPlatform';
  static const maps = 'maprotation?auth=$apiKey&version=2';
  static const bundles = 'crafting?auth=$apiKey';
  static const news = 'news?auth=$apiKey';
  static const server = 'servers?auth=$apiKey';

  static const privacyPolicy =
      'https://www.termsfeed.com/live/7cfd4f0d-4985-4d63-be9a-db232cf08d51';
  
  static const landingImagesContribution = 'https://alphacoders.com/users/profile/18905';
}
