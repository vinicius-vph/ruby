class Pagamento
  attr_accessor :produto, :quantidade, :preco,:valor

  def initialize(quantidade:, produto:)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = quantidade * @produto.preco
    @produto.estoque -= quantidade
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end
