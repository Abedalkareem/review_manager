package com.example.review_manager

import android.app.Activity
import android.util.Log
import com.google.android.play.core.review.ReviewManagerFactory
import io.flutter.plugin.common.MethodChannel

object AppReviewHelper {
    fun requestReviewIfAppropriate(activity: Activity, result: MethodChannel.Result) {
        val manager = ReviewManagerFactory.create(activity)
        val request = manager.requestReviewFlow()
        request.addOnCompleteListener { task ->
            if (task.isSuccessful) {
                val reviewInfo = task.result
                manager.launchReviewFlow(activity, reviewInfo)
                        .addOnSuccessListener {
                            Log.i("Successful", reviewInfo.toString())
                            result.success(null)
                        }.addOnFailureListener { exception ->
                            exception?.localizedMessage?.let { Log.e("Exception", it) }
                            result.error(PluginError.FailedToLaunchReviewFlow.errorCode(), PluginError.FailedToLaunchReviewFlow.errorMessage(), exception?.localizedMessage)
                        }
            } else {
                task.exception?.localizedMessage?.let { Log.e("Exception", it) }
                result.error(PluginError.FailedToRequestReview.errorCode(), PluginError.FailedToRequestReview.errorMessage(), task.exception?.localizedMessage)
            }
        }
    }
}