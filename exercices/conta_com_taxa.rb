class ContaComTaxa < ContaBancaria
    TAXA_DE_TRANSFERENCIA = 2

    def transferir(conta_destino, valor)
        super
        debitar(TAXA_DE_TRANSFERENCIA)
    end
    
end