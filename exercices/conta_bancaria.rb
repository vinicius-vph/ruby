class ContaBancaria
    def initialize(proprietário, saldo)
        @proprietário = proprietário
        @saldo = saldo
    end
    def transferir(conta_destino, valor)
        if saldo >= valor
            debitar(valor)
            conta_destino.depositar(valor)
        else
            raise 'Tranferencia não efetuada Saldo insuficiente'
        end 
    end
    def saldo
        @saldo
    end

    private

    def debitar(valor_debito)
        @saldo -= valor_debito
    end
    
    protected
    def depositar(valor_deposito)
        @saldo += valor_deposito
    end
end