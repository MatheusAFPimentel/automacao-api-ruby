Dado('que o usuário acessa API para criar') do
    
  end
  
  Quando('enviar uma requisição de criação') do
    $post = CreateStartup.new
    $post.postStartup
  end
  
  Então('deve ser retornado status 200 criado') do 
    $post.startUpChecked
  end