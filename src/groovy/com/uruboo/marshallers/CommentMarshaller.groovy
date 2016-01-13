package com.uruboo.marshallers

import com.uruboo.Comment
import grails.converters.JSON

class CommentMarshaller {
    void register() {
        JSON.registerObjectMarshaller(Comment) { Comment comment ->
            return [
                id: comment.id,
                sender: [
                    id: comment.sender.id,
                    firstName: comment.sender.firstName
                ],
                receiver: [
                    id: comment.receiver.id,
                    firstName: comment.receiver.firstName
                ],
                message: comment.message,
                dateCreated: comment.dateCreated,
                lastUpdated: comment.lastUpdated
            ]
        }
    }
}
