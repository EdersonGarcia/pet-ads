package minicurso

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class MinicursoController {

    def petService
    static scaffold = true

    def verificaVagas(Minicurso minicurso){
        def miniCurso = Minicurso.get(4)

       render  petService.verificaQuantidadeVagasDisponiveis(miniCurso)

    }
}
