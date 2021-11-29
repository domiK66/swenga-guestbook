package at.fhj.ima.swenga_guestbook.classes

import at.fhj.ima.swenga_guestbook.models.GuestBookEntry

class GuestBookManager() {
    var entries = emptyList<GuestBookEntry>()
        private set

    fun add(entry: GuestBookEntry) {
        entries = entries.plus(entry)
    }
    val isEmpty get() = entries.isEmpty()
}