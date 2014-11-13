package minicurso

import seguranca.Usuario

class Inscricao {

    String usuario
     static belongsTo = [minicurso:Minicurso]
    Date dateCreated


    static constraints = {
    }
//    String toString(){
//        return "$usuario - $minicurso"
//    }
}
