package contato

import seguranca.Usuario

class Contato {

    String  nome
    String  email
    String descricao
    Date dateCreated
    Date lastUpdated
    Usuario usuario

    static constraints = {
        usuario nullable: true
    }

    String toString(){
        return "Codigo Contato: $id"
    }
}
