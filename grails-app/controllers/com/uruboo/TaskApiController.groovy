package com.uruboo

import com.uruboo.enums.TaskState

class TaskApiController extends AbstractApiController {

    TaskApiController() {
        super(Task)
    }

    def update() {
        Task originalTask = (Task) queryForResource(params.id)
        if (jsonRequest) {
            jsonRequest.findAll { originalTask.hasProperty(it.key) && it.key != 'state' }?.each {
                TaskFieldUpdateLog update = new TaskFieldUpdateLog(
                        field: it.key,
                        oldValue: originalTask[it.key],
                        newValue: it.value,
                        task: originalTask
                )
                update.save()
            }
            if (jsonRequest.state && TaskState.findByName(jsonRequest.state)) {
                TaskStateUpdateLog update = new TaskStateUpdateLog(
                        oldState: originalTask.state,
                        newState: TaskState.findByName(jsonRequest.state),
                        task: originalTask
                )
                update.save()
            }
        }
        super.update()
    }
}
