package seguranca

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class UsuarioPermisaoController {

    static scaffold = true
}
