def bem_vindo()
    puts "Bem-vindo ao Cookbooks, sua rede social de receitas"
end

def agradecimento()
    puts
    puts "Obrigado por usar o Cookbook"
end

def menu()
    puts "[1] Cadastrar uma receitas"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"
    
    print "Escolha uma opção: "
    return gets.to_i()
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

def imprimir_receitas(array_receitas)
    puts "======= Receitas Cadastradas ======="
        array_receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end   
        puts
end

def erro_opcao()
    puts "Opção invalida!" 
end

bem_vindo()

receitas = []

opcao = menu()

while(opcao != 3 ) do 
    if(opcao == 1)
        receitas << inserir_receitas()
    elsif(opcao == 2)
        imprimir_receitas(receitas)
    else
        erro_opcao()
    end
    puts
    opcao = menu()
end
agradecimento()
