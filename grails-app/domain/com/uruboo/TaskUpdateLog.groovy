package com.uruboo

class TaskUpdateLog {

    Date dateCreated

    static belongsTo = [task: Task]
    static constraints = {}
}
