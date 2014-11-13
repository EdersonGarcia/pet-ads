package classes

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
}
