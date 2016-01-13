package com.uruboo.marshallers

import grails.converters.JSON

class DateMarshaller {
    void register() {
        JSON.registerObjectMarshaller(Date) { Date date ->
            return date?.format("yyyy-MM-dd HH:mm:ss")
        }
    }
}
