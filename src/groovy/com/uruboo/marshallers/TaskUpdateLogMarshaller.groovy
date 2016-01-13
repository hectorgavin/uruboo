package com.uruboo.marshallers

import com.uruboo.TaskFieldUpdateLog
import com.uruboo.TaskStateUpdateLog
import grails.converters.JSON

class TaskUpdateLogMarshaller {
    void register() {
        JSON.registerObjectMarshaller(TaskFieldUpdateLog) { TaskFieldUpdateLog taskFieldUpdateLog ->
            return [
                id: taskFieldUpdateLog.id,
                field: taskFieldUpdateLog.field,
                oldValue: taskFieldUpdateLog.oldValue,
                newValue: taskFieldUpdateLog.newValue,
                dateCreated: taskFieldUpdateLog.dateCreated
            ]
        }
        JSON.registerObjectMarshaller(TaskStateUpdateLog) { TaskStateUpdateLog taskStateUpdateLog ->
            return [
                id: taskStateUpdateLog.id,
                oldState: taskStateUpdateLog.oldState,
                newState: taskStateUpdateLog.newState,
                dateCreated: taskStateUpdateLog.dateCreated
            ]
        }
    }
}
