package com.uruboo

import grails.rest.RestfulController

abstract class AbstractApiController<T> extends RestfulController<T> {

    static responseFormats = ['json']

    AbstractApiController(Class domain) {
        super(domain)
    }

    def show() {
        respond queryForResource(params.id), [includes: includeFields]
    }

    def index() {
        respond listAllResources(params), [includes: includeFields]
    }

    protected getIncludeFields() {
        params.fields?.tokenize(',')
    }
}
