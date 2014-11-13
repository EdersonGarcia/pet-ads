import seguranca.Permisao
import seguranca.Usuario
import seguranca.UsuarioPermisao

class BootStrap {

    def init = { servletContext ->
        if (Usuario.count < 1 && Permisao.count <1 && UsuarioPermisao.count()<1) {
            println "criando Usuario Padrão"
            def adminRole = new Permisao(authority: 'ROLE_ADMIN').save(flush: true)
            def userRole = new Permisao(authority: 'ROLE_USUARIO').save(flush: true)

            def testUser = new Usuario(username: 'admin', password: 'admin')
            testUser.save(flush: true)

            UsuarioPermisao.create testUser, adminRole, true

            assert Usuario.count() == 1
            assert Permisao.count() == 2
            assert UsuarioPermisao.count() == 1
            println "criado: $adminRole $userRole $testUser"
        }else{
            println("Usuario Padrao ja cadastrado")
        }
    }
    def destroy = {
    }
}
