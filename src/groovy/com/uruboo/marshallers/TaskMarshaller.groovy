package com.uruboo.marshallers

import com.uruboo.Task
import grails.converters.JSON

class TaskMarshaller {
    void register() {
        JSON.registerObjectMarshaller(Task) { Task task ->
            return [
                id: task.id,
                title: task.title,
                description: task.description,
                state: task.state.name(),
                finished: task.finished,
                dateCreated: task.dateCreated,
                lastUpdated: task.lastUpdated
            ]
        }
    }
}
