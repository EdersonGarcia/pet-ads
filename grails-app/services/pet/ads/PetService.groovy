package pet.ads

import grails.transaction.Transactional
import minicurso.Minicurso

@Transactional
class PetService {

    def verificaQuantidadeVagasDisponiveis(Minicurso minicurso) {

        def miniCursoCadastrados = Minicurso.createCriteria().list{

            inscricoes {
                eq("minicurso",minicurso)


            }

        }
        if(miniCursoCadastrados.size()< minicurso.vagas){
            println ("Existem Vagas Disponiveis")
            return (minicurso.vagas - miniCursoCadastrados.size())
        }else{
          println  ("Não há vagas")
        }

    }
}
