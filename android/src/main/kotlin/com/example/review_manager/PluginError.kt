package com.example.review_manager

enum class PluginError {
    FailedToRequestReview,
    FailedToLaunchReviewFlow
}

fun PluginError.errorCode(): String {
    return when (this) {
        PluginError.FailedToRequestReview -> {
            "11"
        }

        PluginError.FailedToLaunchReviewFlow -> {
            "12"
        }
    }
}

fun PluginError.errorMessage(): String {
    return when (this) {
        PluginError.FailedToRequestReview -> {
            "Failed to request review"
        }

        PluginError.FailedToLaunchReviewFlow -> {
            "Failed to launch review flow"
        }
    }
}