package com.uruboo

class Comment {

    User sender
    User receiver
    String message
    Date dateCreated
    Date lastUpdated

    static belongsTo = [task: Task]
    static constraints = {
        sender nullable: false
        receiver nullable: false
        message nullable: false, type: 'text', widget: 'textarea'
    }
}
