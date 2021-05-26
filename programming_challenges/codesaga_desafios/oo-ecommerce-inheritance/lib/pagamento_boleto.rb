class PagamentoBoleto < Pagamento
    attr_accessor :quantidade, :produto, :valor

    def initialize(quantidade:, produto:)
        super(quantidade: quantidade, produto: produto)
    end

    def calcular_valor
        @valor = quantidade
    end
end