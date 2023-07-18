Before do 
    puts "###### Início de execução do teste #####"
    $uri_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
    @nome = Faker::Company.name
    @cidade = Faker::Address.city

    @body = {
        "nome": @nome,
        "cidade": @cidade
    }

    
end

After do
    puts "##### Teste finalizado #####"
end