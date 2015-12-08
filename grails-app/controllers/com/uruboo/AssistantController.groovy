package com.uruboo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssistantController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Assistant.list(params), model:[assistantInstanceCount: Assistant.count()]
    }

    def show(Assistant assistantInstance) {
        respond assistantInstance
    }

    def create() {
        respond new Assistant(params)
    }

    @Transactional
    def save(Assistant assistantInstance) {
        if (assistantInstance == null) {
            notFound()
            return
        }

        if (assistantInstance.hasErrors()) {
            respond assistantInstance.errors, view:'create'
            return
        }

        assistantInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assistant.label', default: 'Assistant'), assistantInstance.id])
                redirect assistantInstance
            }
            '*' { respond assistantInstance, [status: CREATED] }
        }
    }

    def edit(Assistant assistantInstance) {
        respond assistantInstance
    }

    @Transactional
    def update(Assistant assistantInstance) {
        if (assistantInstance == null) {
            notFound()
            return
        }

        if (assistantInstance.hasErrors()) {
            respond assistantInstance.errors, view:'edit'
            return
        }

        assistantInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Assistant.label', default: 'Assistant'), assistantInstance.id])
                redirect assistantInstance
            }
            '*'{ respond assistantInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Assistant assistantInstance) {

        if (assistantInstance == null) {
            notFound()
            return
        }

        assistantInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Assistant.label', default: 'Assistant'), assistantInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assistant.label', default: 'Assistant'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
