package com.uruboo.marshallers

import com.uruboo.Task
import com.uruboo.enums.TaskState
import grails.converters.JSON

class TaskMarshaller {
    void register() {
        JSON.registerObjectMarshaller(Task) { Task task ->
            return [
                id: task.id,
                title: task.title,
                description: task.description,
                state: task.state,
                finished: task.finished,
                dateCreated: task.dateCreated,
                lastUpdated: task.lastUpdated
            ]
        }
        JSON.registerObjectMarshaller(TaskState) { TaskState taskState ->
            return taskState.name()
        }
    }
}
