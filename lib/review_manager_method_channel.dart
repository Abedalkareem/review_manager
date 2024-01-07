import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:review_manager/method.dart';

import 'review_manager_platform_interface.dart';

const _channelName = "review_manager";

class MethodChannelReviewManager extends ReviewManagerPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel(_channelName);

  @override
  Future<void> requestReviewIfAppropriate() async {
    await methodChannel.invokeMethod<String>(Method.requestReviewIfAppropriate);
  }
}
