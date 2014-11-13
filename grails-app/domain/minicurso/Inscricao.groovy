package minicurso

import seguranca.Usuario

class Inscricao {

    Usuario usuario
     static belongsTo = [minicurso:Minicurso]
    Date dateCreated


    static constraints = {
    }
//    String toString(){
//        return "$usuario - $minicurso"
//    }
}
