package com.uruboo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TaskStateUpdateLogController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TaskStateUpdateLog.list(params), model:[taskStateUpdateLogInstanceCount: TaskStateUpdateLog.count()]
    }

    def show(TaskStateUpdateLog taskStateUpdateLogInstance) {
        respond taskStateUpdateLogInstance
    }

    def create() {
        respond new TaskStateUpdateLog(params)
    }

    @Transactional
    def save(TaskStateUpdateLog taskStateUpdateLogInstance) {
        if (taskStateUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskStateUpdateLogInstance.hasErrors()) {
            respond taskStateUpdateLogInstance.errors, view:'create'
            return
        }

        taskStateUpdateLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'taskStateUpdateLog.label', default: 'TaskStateUpdateLog'), taskStateUpdateLogInstance.id])
                redirect taskStateUpdateLogInstance
            }
            '*' { respond taskStateUpdateLogInstance, [status: CREATED] }
        }
    }

    def edit(TaskStateUpdateLog taskStateUpdateLogInstance) {
        respond taskStateUpdateLogInstance
    }

    @Transactional
    def update(TaskStateUpdateLog taskStateUpdateLogInstance) {
        if (taskStateUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskStateUpdateLogInstance.hasErrors()) {
            respond taskStateUpdateLogInstance.errors, view:'edit'
            return
        }

        taskStateUpdateLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TaskStateUpdateLog.label', default: 'TaskStateUpdateLog'), taskStateUpdateLogInstance.id])
                redirect taskStateUpdateLogInstance
            }
            '*'{ respond taskStateUpdateLogInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TaskStateUpdateLog taskStateUpdateLogInstance) {

        if (taskStateUpdateLogInstance == null) {
            notFound()
            return
        }

        taskStateUpdateLogInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TaskStateUpdateLog.label', default: 'TaskStateUpdateLog'), taskStateUpdateLogInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taskStateUpdateLog.label', default: 'TaskStateUpdateLog'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
