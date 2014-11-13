package minicurso

class Minicurso {
    String nome
    BigDecimal cargaHoraria
    Date dataIncio
    Date dateCreated
    Date lastUpdated
    int vagas
    static hasMany = [inscricoes: Inscricao]

    static constraints = {
    }

    String toString(){
        return "$nome - Carga Hr:$cargaHoraria - data Inicio: $dataIncio vagas: $vagas"
    }
}
