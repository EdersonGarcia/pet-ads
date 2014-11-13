package contato

import seguranca.Usuario

class RespostaContato {

    String resposta
    Date dateCreated
    Date lastUpdated
    Usuario Usuario
    static belongsTo = [contato:Contato]

    static constraints = {
    }

    String toString(){
        return "Resposta referente ao Contato $contato.id"
    }
}
