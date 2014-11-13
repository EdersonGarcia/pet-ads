package seguranca

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PermisaoController {

    static scaffold = true
}
