package com.uruboo

import static org.springframework.http.HttpStatus.PRECONDITION_FAILED

class AssistantApiController extends AbstractApiController {

    AssistantApiController() {
        super(Assistant)
    }

    def delete() {
        Assistant assistant = (Assistant) queryForResource(params.id)
        if (assistant.customers) {
            fail('The assistant has customers assigned', PRECONDITION_FAILED)
            return
        }
        super.delete()
    }
}
