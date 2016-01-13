package com.uruboo

class TaskUpdateLogApiController extends AbstractApiController {

    TaskUpdateLogApiController() {
        super(TaskUpdateLog)
    }

    def index() {
        if (params && !params.sort) {
            params.sort = 'dateCreated'
            params.order = 'desc'
        }
        super.index()
    }
}
