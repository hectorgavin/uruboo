package com.uruboo.api

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
        def resource = queryForResource(params.id)
        if (params.fields && resource) {
            resource = resource.partial(includeFields)
        }
        respond resource
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def resources = listAllResources(params)
        if (params.fields) {
            resources = resources?.collect {
                it.partial(includeFields)
            }
        }
        respond resources
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
