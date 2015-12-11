package com.uruboo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerAccountController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomerAccount.list(params), model:[customerAccountInstanceCount: CustomerAccount.count()]
    }

    def show(CustomerAccount customerAccountInstance) {
        respond customerAccountInstance
    }

    def create() {
        respond new CustomerAccount(params)
    }

    @Transactional
    def save(CustomerAccount customerAccountInstance) {
        if (customerAccountInstance == null) {
            notFound()
            return
        }

        if (customerAccountInstance.hasErrors()) {
            respond customerAccountInstance.errors, view:'create'
            return
        }

        customerAccountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerAccount.label', default: 'CustomerAccount'), customerAccountInstance.id])
                redirect customerAccountInstance
            }
            '*' { respond customerAccountInstance, [status: CREATED] }
        }
    }

    def edit(CustomerAccount customerAccountInstance) {
        respond customerAccountInstance
    }

    @Transactional
    def update(CustomerAccount customerAccountInstance) {
        if (customerAccountInstance == null) {
            notFound()
            return
        }

        if (customerAccountInstance.hasErrors()) {
            respond customerAccountInstance.errors, view:'edit'
            return
        }

        customerAccountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomerAccount.label', default: 'CustomerAccount'), customerAccountInstance.id])
                redirect customerAccountInstance
            }
            '*'{ respond customerAccountInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerAccount customerAccountInstance) {

        if (customerAccountInstance == null) {
            notFound()
            return
        }

        customerAccountInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomerAccount.label', default: 'CustomerAccount'), customerAccountInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerAccount.label', default: 'CustomerAccount'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
