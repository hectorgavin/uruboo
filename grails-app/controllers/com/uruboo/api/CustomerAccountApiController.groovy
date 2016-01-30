package com.uruboo.api

import com.uruboo.CustomerAccount

class CustomerAccountApiController extends AbstractApiController {

    CustomerAccountApiController() {
        super(CustomerAccount)
    }

    def save() {
        jsonRequest.customer = params.customerApiId
        super.save()
    }
}
