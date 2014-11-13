package seguranca

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class UsuarioController {

    static scaffold = true
}
