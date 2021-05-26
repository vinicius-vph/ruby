class Pagamento
    attr_accessor :quantidade, :produto, :preco
    attr_reader :valor
    def initialize(quantidade:, produto: 'Sem nome', preco:)
        @quantidade = quantidade 
        @produto = produto
        @preco = preco
        @valor = valor
    end

    def calcular_valor()
        @valor = preco * quantidade
    end

    def aplicar_desconto(desconto)
        @valor -= desconto
    end
end
