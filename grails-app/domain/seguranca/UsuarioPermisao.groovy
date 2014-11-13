package seguranca

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuarioPermisao implements Serializable {

    private static final long serialVersionUID = 1

    Usuario usuario
    Permisao permisao

    boolean equals(other) {
        if (!(other instanceof UsuarioPermisao)) {
            return false
        }

        other.usuario?.id == usuario?.id &&
                other.permisao?.id == permisao?.id
    }

    int hashCode() {
        def builder = new HashCodeBuilder()
        if (usuario) builder.append(usuario.id)
        if (permisao) builder.append(permisao.id)
        builder.toHashCode()
    }

    static UsuarioPermisao get(long usuarioId, long permisaoId) {
        UsuarioPermisao.where {
            usuario == Usuario.load(usuarioId) &&
                    permisao == Permisao.load(permisaoId)
        }.get()
    }

    static boolean exists(long usuarioId, long permisaoId) {
        UsuarioPermisao.where {
            usuario == Usuario.load(usuarioId) &&
                    permisao == Permisao.load(permisaoId)
        }.count() > 0
    }

    static UsuarioPermisao create(Usuario usuario, Permisao permisao, boolean flush = false) {
        def instance = new UsuarioPermisao(usuario: usuario, permisao: permisao)
        instance.save(flush: flush, insert: true)
        instance
    }

    static boolean remove(Usuario u, Permisao r, boolean flush = false) {
        if (u == null || r == null) return false

        int rowCount = UsuarioPermisao.where {
            usuario == Usuario.load(u.id) &&
                    permisao == Permisao.load(r.id)
        }.deleteAll()

        if (flush) {
            UsuarioPermisao.withSession { it.flush() }
        }

        rowCount > 0
    }

    static void removeAll(Usuario u, boolean flush = false) {
        if (u == null) return

        UsuarioPermisao.where {
            usuario == Usuario.load(u.id)
        }.deleteAll()

        if (flush) {
            UsuarioPermisao.withSession { it.flush() }
        }
    }

    static void removeAll(Permisao r, boolean flush = false) {
        if (r == null) return

        UsuarioPermisao.where {
            permisao == Permisao.load(r.id)
        }.deleteAll()

        if (flush) {
            UsuarioPermisao.withSession { it.flush() }
        }
    }

    static constraints = {
        permisao validator: { Permisao r, UsuarioPermisao ur ->
            if (ur.usuario == null) return
            boolean existing = false
            UsuarioPermisao.withNewSession {
                existing = UsuarioPermisao.exists(ur.usuario.id, r.id)
            }
            if (existing) {
                return 'userRole.exists'
            }
        }
    }

    static mapping = {
        id composite: ['permisao', 'usuario']
        version false
    }

    String toString(){
        return "$usuario - Permissão: $permisao"
    }
}
