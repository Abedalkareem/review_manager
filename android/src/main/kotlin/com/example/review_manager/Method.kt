package com.example.review_manager

enum class Method {
    RequestReviewIfAppropriate
}

fun Method.value(): String {
    return "$this".lowercase()
}

fun methodsFrom(string: String): Method? {
    return Method.values().firstOrNull { it.value() == string.lowercase() }
}