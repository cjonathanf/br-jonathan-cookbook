
puts "========== Bem - Vindo ao Cookbook, sua rede social de receitas =========="
puts

receitas = []

puts "[1] Para cadastrar uma nova receita"
puts "[2] Para visualizar uma receita cadastrada"
puts "[3] Para sair"

print "Escolha uma das opções acima: "
opcao = gets.to_i()


while(opcao != 3) do
    
    if(opcao == 1)
        puts "Digite o nome da receita"
        nome = gets.chomp() 
    
        receitas << nome
    
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
    
    elsif(opcao == 2)
        puts "=========== RECEITAS CADASTRADAS ==========="
        # for receita in receitas do
            
        #     puts receita
        #     puts

        # end

        receitas.each do |receita|
            puts receita
            puts

        end 
    else 
        puts "Opção Inválida"
    
    end 

    puts "[1] Para cadastrar uma nova receita"
    puts "[2] Para visualizar uma receita cadastrada"
    puts "[3] Para sair"

    print "Escolha uma das opções acima: "
    opcao = gets.to_i()

end

puts
puts "Obrigado por utilizar o cookbook!"
puts
