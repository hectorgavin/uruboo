package com.uruboo.marshallers

class CustomObjectMarshaller {
    List marshallers = []

    def register() {
        marshallers.each{ it.register() }
    }
}
