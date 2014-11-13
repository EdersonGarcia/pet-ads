package contato

class Contato {

    String  nome
    String  email
    String descricao
    Date dateCreated
    Date lastUpdated
    //Usuario Usuario

    static constraints = {
    }

    String toString(){
        return "Codigo Contato: $id"
    }
}
