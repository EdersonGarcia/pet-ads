package agenda

import grails.plugin.springsecurity.SpringSecurityService
import seguranca.Usuario

class Eventos {

    Date dataInicioEvento
    Date dataFimEvento
    String descricao
    String local
    Usuario reponsavel
    boolean exclusivo
    String linkEvento
    static hasMany = [convidados: Usuario]

    static constraints = {
        dataFimEvento nullable: true
        linkEvento nullable: true
    }

    String toString(){
        return "$id - $descricao , local: $local"
    }

}
