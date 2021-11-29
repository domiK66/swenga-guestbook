package at.fhj.ima.swenga_guestbook.models

import java.time.LocalDateTime

data class GuestBookEntry(
    val title: String,
    val name: String,
    val comment: String,
    val addedAt: LocalDateTime = LocalDateTime.now()
)
