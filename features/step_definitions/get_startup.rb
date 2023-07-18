Dado("que o usuário acessa API") do
    puts "Usuário acessou api http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
  end
  
  Quando("enviar uma requisição de consulta") do
    $get = GetStartup.new
    $get.getStartUp
  end
  
  Então("deve ser retornado status 200") do
    $get.startUpChecked
  end