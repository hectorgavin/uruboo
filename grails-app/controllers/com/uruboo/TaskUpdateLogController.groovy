package com.uruboo

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TaskUpdateLogController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TaskUpdateLog.list(params), model: [taskUpdateLogInstanceCount: TaskUpdateLog.count()]
    }

    def show(TaskUpdateLog taskUpdateLogInstance) {
        respond taskUpdateLogInstance
    }

    def create() {
        respond new TaskUpdateLog(params)
    }

    @Transactional
    def save(TaskUpdateLog taskUpdateLogInstance) {
        if (taskUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskUpdateLogInstance.hasErrors()) {
            respond taskUpdateLogInstance.errors, view: 'create'
            return
        }

        taskUpdateLogInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'taskUpdateLog.label', default: 'TaskUpdateLog'), taskUpdateLogInstance.id])
                redirect taskUpdateLogInstance
            }
            '*' { respond taskUpdateLogInstance, [status: CREATED] }
        }
    }

    def edit(TaskUpdateLog taskUpdateLogInstance) {
        respond taskUpdateLogInstance
    }

    @Transactional
    def update(TaskUpdateLog taskUpdateLogInstance) {
        if (taskUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskUpdateLogInstance.hasErrors()) {
            respond taskUpdateLogInstance.errors, view: 'edit'
            return
        }

        taskUpdateLogInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TaskUpdateLog.label', default: 'TaskUpdateLog'), taskUpdateLogInstance.id])
                redirect taskUpdateLogInstance
            }
            '*' { respond taskUpdateLogInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TaskUpdateLog taskUpdateLogInstance) {
        if (taskUpdateLogInstance == null) {
            notFound()
            return
        }

        taskUpdateLogInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TaskUpdateLog.label', default: 'TaskUpdateLog'), taskUpdateLogInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taskUpdateLog.label', default: 'TaskUpdateLog'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
