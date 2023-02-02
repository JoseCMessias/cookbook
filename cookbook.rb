puts "Bem-vindo ao Cookbooks, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receitas"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while(opcao != 3 ) do 

    if(opcao == 1)
        print "Digite o nome da receita: "
        nome = gets.chomp()
        print "Digite o tipo da receita: "
        tipo = gets.chomp()

        receitas << { nome: nome, tipo: tipo }
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
    elsif(opcao == 2)
        puts "======= Receitas Cadastradas ======="
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end   
        puts
    else
        puts "Opção invalida!"   
    end
    
    puts
    puts "[1] Cadastrar uma receitas"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    opcao = gets.to_i()
end

puts
puts "Obrigado por usar o Cookbook"
