package com.uruboo

import com.uruboo.enums.TaskState

class Task {

    String title
    String description
    TaskState state = TaskState.OPEN
    Date finished
    Date dateCreated
    Date lastUpdated

    // TODO: Link to Assistant as well?

    static belongsTo = [customer: Customer]
    static hasMany = [comments: Comment, updates: TaskUpdateLog]
    static constraints = {
        title nullable: false, blank: false
        description nullable: true, type: 'text', widget: 'textarea'
        state nullable: false, blank: false
        finished nullable: true
        customer nullable: false
    }

    String toString() {
        return title
    }
}
