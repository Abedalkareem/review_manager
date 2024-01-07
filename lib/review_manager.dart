import 'review_manager_platform_interface.dart';

class ReviewManager {
  /// Launches and displays the review flow to the user.
  ///
  /// This may or may not show any UI.
  /// Given this may not successfully present an alert to the user, it is not appropriate for use
  /// from a button or any other user action.
  Future<void> requestReviewIfAppropriate() {
    return ReviewManagerPlatform.instance.requestReviewIfAppropriate();
  }
}
