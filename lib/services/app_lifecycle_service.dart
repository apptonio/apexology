import 'package:get/get.dart';

///
/// This is a service used to triger methods when the app goes in a different state
///

class AppLifecycleService extends FullLifeCycleController
    with FullLifeCycleMixin {
  ///
  /// DEPENDENCIES
  ///

  ///
  /// METHODS
  ///

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onPaused() {}

  @override
  void onResumed() {}
}
