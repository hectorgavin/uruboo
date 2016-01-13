package com.uruboo

class TaskFieldUpdateLog extends TaskUpdateLog {

    String field
    String oldValue
    String newValue

    static constraints = {
        field nullable: false, blank: false
        oldValue nullable: true
        newValue nullable: true
    }
    static mapping = {
        oldValue type: 'text'
        newValue type: 'text'
    }
}
