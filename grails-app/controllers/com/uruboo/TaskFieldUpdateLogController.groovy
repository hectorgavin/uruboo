package com.uruboo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TaskFieldUpdateLogController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TaskFieldUpdateLog.list(params), model:[taskFieldUpdateLogInstanceCount: TaskFieldUpdateLog.count()]
    }

    def show(TaskFieldUpdateLog taskFieldUpdateLogInstance) {
        respond taskFieldUpdateLogInstance
    }

    def create() {
        respond new TaskFieldUpdateLog(params)
    }

    @Transactional
    def save(TaskFieldUpdateLog taskFieldUpdateLogInstance) {
        if (taskFieldUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskFieldUpdateLogInstance.hasErrors()) {
            respond taskFieldUpdateLogInstance.errors, view:'create'
            return
        }

        taskFieldUpdateLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'taskFieldUpdateLog.label', default: 'TaskFieldUpdateLog'), taskFieldUpdateLogInstance.id])
                redirect taskFieldUpdateLogInstance
            }
            '*' { respond taskFieldUpdateLogInstance, [status: CREATED] }
        }
    }

    def edit(TaskFieldUpdateLog taskFieldUpdateLogInstance) {
        respond taskFieldUpdateLogInstance
    }

    @Transactional
    def update(TaskFieldUpdateLog taskFieldUpdateLogInstance) {
        if (taskFieldUpdateLogInstance == null) {
            notFound()
            return
        }

        if (taskFieldUpdateLogInstance.hasErrors()) {
            respond taskFieldUpdateLogInstance.errors, view:'edit'
            return
        }

        taskFieldUpdateLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TaskFieldUpdateLog.label', default: 'TaskFieldUpdateLog'), taskFieldUpdateLogInstance.id])
                redirect taskFieldUpdateLogInstance
            }
            '*'{ respond taskFieldUpdateLogInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TaskFieldUpdateLog taskFieldUpdateLogInstance) {

        if (taskFieldUpdateLogInstance == null) {
            notFound()
            return
        }

        taskFieldUpdateLogInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TaskFieldUpdateLog.label', default: 'TaskFieldUpdateLog'), taskFieldUpdateLogInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taskFieldUpdateLog.label', default: 'TaskFieldUpdateLog'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
