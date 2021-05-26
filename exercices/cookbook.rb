# iniciando os estudos de códigos básicos em ruby
INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
    puts "=" * 23
    puts " Bem vindo ao cookbook "
    puts "=" * 23
    puts
end

def menu
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver receitas"
    puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
    puts "[#{SAIR}] Sair"
    puts
    print "Escolha uma opção: "
    gets.to_i()
end

def inserir_receita()
    puts
    puts "Digite o nome da receita: "
    receita = gets.chomp()
    puts       
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{receita} cadastrada com sucesso!"
    puts
    return {receita:receita, tipo:tipo}
end

def imprimir_receitas(cookbook_items)
    puts
    puts "======== Receitas cadastradas ========"
    cookbook_items.each do |receita|
        puts "#{receita[:receita]} - #{receita[:tipo]}"
    end
    puts
    if cookbook_items.empty?
        puts "Nenhuma receita cadastrada"
        puts
    end
end
def buscar_receitas(cookbook_items)
    puts
    puts "Digite o nome da receita que você quer procurar: "
    receita = gets.chomp()
    puts "Digite a categoria: "
    tipo = gets.chomp()
    puts
    puts cookbook_items.include?("#{receita[:receita]} - #{receita[:tipo]}")

end

receitas = []

bem_vindo()

opcao = menu()

loop do
    if (opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif opcao == VISUALIZAR_RECEITAS
        imprimir_receitas(receitas)
    elsif opcao == BUSCAR_RECEITAS
        buscar_receitas(receitas)
    elsif opcao == SAIR
        break
    else
        puts
        puts "Opção inválida digite um valor ente #{INSERIR_RECEITA} e #{SAIR}"
        puts
    end

    opcao = menu()
end
puts
puts 'Obrigado por usar o Cookbook, até logo !'   
    