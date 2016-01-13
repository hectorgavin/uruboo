package com.uruboo

import grails.rest.RestfulController
import org.springframework.http.HttpStatus

abstract class AbstractApiController<T> extends RestfulController<T> {

    protected Map jsonRequest = [:]

    static responseFormats = ['json']
    static beforeInterceptor = {
        // Note: request.JSON stream is closed once it is read once,
        // that is why we need this property
        jsonRequest << request.JSON
    }

    AbstractApiController(Class domain) {
        super(domain)
    }

    def show() {
        respond queryForResource(params.id), [includes: includeFields]
    }

    def index() {
        respond listAllResources(params), [includes: includeFields]
    }

    protected getObjectToBind() {
        return jsonRequest
    }

    protected getIncludeFields() {
        params.fields?.tokenize(',')
    }

    protected fail(String message, HttpStatus status = HttpStatus.NOT_FOUND) {
        respond([error: message] as Object, [status: status])
    }
}
