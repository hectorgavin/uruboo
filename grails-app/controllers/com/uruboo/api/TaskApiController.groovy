package com.uruboo.api

import com.uruboo.Task
import com.uruboo.TaskFieldUpdateLog
import com.uruboo.TaskStateUpdateLog
import com.uruboo.enums.TaskState

class TaskApiController extends AbstractApiController {

    TaskApiController() {
        super(Task)
    }

    def save() {
        jsonRequest.customer = params.customerApiId
        super.save()
    }

    def update() {
        Task originalTask = (Task) queryForResource(params.id)

        // Create a TaskFieldUpdate for each modified field
        if (jsonRequest) {
            jsonRequest.findAll {
                originalTask.hasProperty(it.key) &&
                it.key != 'state' &&
                it.value != originalTask[it.key] }?.each {

                TaskFieldUpdateLog update = new TaskFieldUpdateLog(
                        field: it.key,
                        oldValue: originalTask[it.key],
                        newValue: it.value,
                        task: originalTask
                )
                update.save()
            }
            TaskState newState = TaskState.findByName(jsonRequest.state)
            if (newState && originalTask.state != newState) {
                TaskStateUpdateLog update = new TaskStateUpdateLog(
                        oldState: originalTask.state,
                        newState: newState,
                        task: originalTask
                )
                update.save()
            }
        }
        super.update()
    }
}
