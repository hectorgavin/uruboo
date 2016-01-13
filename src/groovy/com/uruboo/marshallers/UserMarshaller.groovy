package com.uruboo.marshallers

import com.uruboo.Assistant
import com.uruboo.Customer
import grails.converters.JSON

class UserMarshaller {
    void register() {
        JSON.registerObjectMarshaller(Assistant) { Assistant assistant ->
            return [
                id: assistant.id,
                email: assistant.email,
                firstName: assistant.firstName,
                lastName: assistant.lastName,
                notes: assistant.notes,
                customers: assistant.customers ? assistant.customers*.id : [],
                dateCreated: assistant.dateCreated,
                lastUpdated: assistant.lastUpdated
            ]
        }
        JSON.registerObjectMarshaller(Customer) { Customer customer ->
            return [
                id: customer.id,
                email: customer.email,
                firstName: customer.firstName,
                lastName: customer.lastName,
                notes: customer.notes,
                assistant: customer.assistant?.id,
                dateCreated: customer.dateCreated,
                lastUpdated: customer.lastUpdated
            ]
        }
    }
}
