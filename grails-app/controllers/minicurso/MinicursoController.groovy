package minicurso

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class MinicursoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Minicurso.list(params), model:[minicursoInstanceCount: Minicurso.count()]
    }

    def show(Minicurso minicursoInstance) {
        respond minicursoInstance
    }

    def create() {

        respond new Minicurso(params)
    }

    @Transactional
    def save(Minicurso minicursoInstance) {
        if (minicursoInstance == null) {
            notFound()
            return
        }

        if (minicursoInstance.hasErrors()) {
            respond minicursoInstance.errors, view:'create'
            return
        }

        minicursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), minicursoInstance.id])
                redirect minicursoInstance
            }
            '*' { respond minicursoInstance, [status: CREATED] }
        }
    }

    def edit(Minicurso minicursoInstance) {
        respond minicursoInstance
    }

    @Transactional
    def update(Minicurso minicursoInstance) {
        if (minicursoInstance == null) {
            notFound()
            return
        }

        if (minicursoInstance.hasErrors()) {
            respond minicursoInstance.errors, view:'edit'
            return
        }

        minicursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Minicurso.label', default: 'Minicurso'), minicursoInstance.id])
                redirect minicursoInstance
            }
            '*'{ respond minicursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Minicurso minicursoInstance) {

        if (minicursoInstance == null) {
            notFound()
            return
        }

        minicursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Minicurso.label', default: 'Minicurso'), minicursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
