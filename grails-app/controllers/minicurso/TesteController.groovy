package minicurso

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TesteController {

    def petService

    def index() {
        def lista = Minicurso.list()
        def mapa
        lista.each { valor ->
        println "percorrendo each $valor"
            if (valor != null) {
                mapa += [minicurso       : valor,
                         vagasDisponiveis: petService.verificaQuantidadeVagasDisponiveis(valor)]
            }
        }
    println mapa

        [listaMinicurso:mapa]

    }
}
