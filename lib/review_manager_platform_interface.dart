import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'review_manager_method_channel.dart';

abstract class ReviewManagerPlatform extends PlatformInterface {
  /// Constructs a ReviewManagerPlatform.
  ReviewManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ReviewManagerPlatform _instance = MethodChannelReviewManager();

  /// The default instance of [ReviewManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelReviewManager].
  static ReviewManagerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ReviewManagerPlatform] when
  /// they register themselves.
  static set instance(ReviewManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> requestReviewIfAppropriate() {
    throw UnimplementedError(
        'requestReviewIfAppropriate() has not been implemented.');
  }
}
