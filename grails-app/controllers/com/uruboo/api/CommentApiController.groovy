package com.uruboo.api

import com.uruboo.Comment

class CommentApiController extends AbstractApiController {

    CommentApiController() {
        super(Comment)
    }

    def index() {
        if (params && !params.sort) {
            params.sort = 'dateCreated'
            params.order = 'asc'
        }
        super.index()
    }

    def save() {
        jsonRequest.task = params.taskApiId
        super.save()
    }
}
