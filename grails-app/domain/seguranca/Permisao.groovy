package seguranca

class Permisao {

    String authority

    static mapping = {
        cache true
    }

    static constraints = {
        authority blank: false, unique: true
    }

    String toString(){
        return  authority
    }
}
