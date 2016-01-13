package com.uruboo.marshallers

import com.uruboo.CustomerAccount
import grails.converters.JSON

class CustomerAccountMarshaller {
    void register() {
        JSON.registerObjectMarshaller(CustomerAccount) { CustomerAccount customerAccount ->
            return [
                id: customerAccount.id,
                host: customerAccount.host,
                user: customerAccount.username,
                password: customerAccount.password,
                dateCreated: customerAccount.dateCreated,
                lastUpdated: customerAccount.lastUpdated
            ]
        }
    }
}
