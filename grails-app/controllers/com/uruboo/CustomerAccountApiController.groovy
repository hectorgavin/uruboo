package com.uruboo

class CustomerAccountApiController extends AbstractApiController {

    CustomerAccountApiController() {
        super(CustomerAccount)
    }

    def save() {
        jsonRequest.customer = params.customerApiId
        super.save()
    }
}
