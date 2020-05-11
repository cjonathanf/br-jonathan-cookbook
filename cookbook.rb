
INSERIR_RECEITA = 1
VISUALIZAR_RECEITA = 2 
BUSCAR_RECEITA = 3 
SAIR = 4

receita_digitada = []

puts "========== Bem - Vindo ao Cookbook, sua rede social de receitas =========="
puts

def menu()
    puts "[#{INSERIR_RECEITA}] Para cadastrar uma nova receita"
    puts "[#{VISUALIZAR_RECEITA}] Para visualizar uma receita cadastrada"
    puts "[#{BUSCAR_RECEITA}] Para buscar uma receita" 
    puts "[#{SAIR}] Para sair"

    print "Escolha uma das opções acima: "
    
    return gets.to_i()
end

def inserir_receita()
    puts "Digite o nome da receita"
    nome = gets.chomp() 
    puts "Digite o tipo da receita"
    tipo = gets.chomp()   
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts  
    return {nome: nome, tipo: tipo}
end

def visualizar_receitas(receitas)

    puts "=========== RECEITAS CADASTRADAS ==========="

    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
        puts
    end
        if receitas.empty?
        puts
        puts "Nenhuma receita cadastrada"   
        puts 
         
    end
          
end

# def buscar_receita(receita_digitada, receitas)
#     print "Digite a receita a ser pesquisada no cookbook: "
#     receita_digitada = gets
#     receita_digitada.chomp.each do |receita|
#         puts "#{receita[:nome]} - #{receita[:tipo]}"
#         puts
#     end
# end

receitas = []

    opcao = menu()


    loop do
    
    if(opcao == INSERIR_RECEITA)
       receitas << inserir_receita()
    elsif(opcao == VISUALIZAR_RECEITA)
        visualizar_receitas(receitas)
    elsif(opcao == BUSCAR_RECEITA)
        buscar_receita(receitas, receita_digitada)
    elsif(opcao == SAIR)
        break
    else 
        puts "Opção Inválida"
    
    end 

    opcao = menu()

end

puts
puts "Obrigado por utilizar o cookbook!"
puts
