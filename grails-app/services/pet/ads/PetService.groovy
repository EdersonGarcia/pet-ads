package pet.ads

import grails.transaction.Transactional
import minicurso.Inscricao
import minicurso.Minicurso

@Transactional
class PetService {

    def verificaQuantidadeVagasDisponiveis(Minicurso minicurso) {

        def  inscricoes = Inscricao.countByMinicurso(minicurso)

        def vagasDisponiveis = inscricoes - minicurso.vagas

        return  vagasDisponiveis


    }
}
