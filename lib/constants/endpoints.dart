///
/// This is a class where all endpoints are stored
/// You can then reference them in code with `MyEndpoints.someEndpoint`
///

class MyEndpoints {
  static const baseUrl = 'https://api.mozambiquehe.re/';
  static const apiKey = 'PwgNiFBihfCtESUXuMlk';
  static const testPlayer = 'Br0nzeGawD';
  static const testPlatform = 'PC';

  static const playerStatistics =
      'bridge?auth=$apiKey&player=$testPlayer&platform=$testPlatform';
  static const mapRotation = 'maprotation?auth=$apiKey&version=2';
  static const craftingRotation = 'crafting?auth=$apiKey';
  static const news = 'news?auth=$apiKey';
  static const serverStatus = 'servers?auth=$apiKey';
}
