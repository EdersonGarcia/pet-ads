package minicurso

class Minicurso {
    String nome
    BigDecimal cargaHoraria
    Date dataIncio
    Date dataFim
    Date dateCreated
    Date lastUpdated
    int vagas
    static hasMany = [inscricoes: Inscricao]

    static constraints = {
        dataFim nullable: true
    }

    String toString(){
        return "$nome - Carga Hr:$cargaHoraria - data Inicio: $dataIncio vagas: $vagas"
    }
}
