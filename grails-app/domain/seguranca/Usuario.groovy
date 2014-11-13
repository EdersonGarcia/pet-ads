package seguranca

class Usuario {

    transient springSecurityService

    String username
    String password
    boolean enabled = true
    String email
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    static hasMany = [permissoes: Permisao]

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false

    }

    static mapping = {
        password column: '`password`'
    }

    Set<Permisao> getAuthorities() {
        UsuarioPermisao.findAllByUsuario(this).collect { it.permisao }
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    String toString(){
        return "$id - $username"
    }
}
