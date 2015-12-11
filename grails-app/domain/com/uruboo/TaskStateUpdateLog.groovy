package com.uruboo

import com.uruboo.enums.TaskState

class TaskStateUpdateLog extends TaskUpdateLog {

    TaskState oldState
    TaskState newState

    static constraints = {
        oldState nullable: false, blank: false
        newState nullable: false, blank: false
    }
}
