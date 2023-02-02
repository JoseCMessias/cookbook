CADASTRAR_RECEITA = 1
VISUALIZAR_RECEITA = 2
BUSCAR_RECEITA = 3
SAIR = 4

def bem_vindo()
    puts "Bem-vindo ao Cookbooks, sua rede social de receitas"
end

def menu()
    puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receitas"
    puts "[#{VISUALIZAR_RECEITA}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITA}] Buscar receitas"
    puts "[#{SAIR}] Sair"
    
    print "Escolha uma opção: "
    return gets.to_i()
    puts
end

def inserir_receitas()
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
  
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return { nome: nome, tipo: tipo }
end

def imprimir_receitas(array_imprimir_receitas)
    puts "======= Receitas Cadastradas ======="
    array_imprimir_receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end   
    puts
    if(array_imprimir_receitas.empty?)
        puts "Nenhuma receita cadastrada"
    end
end

def buscar_receita(array_buscar_receitas)
    puts
    print "Insira o nome da receita: "
    numero_receita = gets.to_i()
    puts array_buscar_receitas[numero_receita]
    puts
    end
end

bem_vindo()

receitas = []

opcao = menu()

loop do 
    if(opcao == CADASTRAR_RECEITA)
        receitas << inserir_receitas()
    elsif(opcao == VISUALIZAR_RECEITA)
        imprimir_receitas(receitas)
    elsif(opcao == BUSCAR_RECEITA)
        buscar_receita(receitas)
    elsif(opcao != SAIR)
        break
    else
        puts "Opção invalida!" 
    end

    puts
    opcao = menu()
end

puts
puts "Obrigado por usar o Cookbook"
