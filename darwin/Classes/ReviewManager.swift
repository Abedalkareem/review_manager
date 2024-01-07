//
//  ReviewManager.swift
//  review_manager
//
//  Created by abedalkareem omreyh on 1/7/24.
//

import Foundation
import StoreKit

class ReviewManager {
  
  static func requestReviewIfAppropriate() {
    if #available(iOS 14.0, *), let windowScene = UIApplication.shared.windows.first?.windowScene {
      SKStoreReviewController.requestReview(in: windowScene)
    } else {
      SKStoreReviewController.requestReview()
    }
  }
}
