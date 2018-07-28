Dado('que eu altere os parametros do meu cliente de um cliente específico') do
  
  # gera os dados usando o Faker
  @cpf_alterado = Faker::CPF.numeric
  @endereco_alterado = Faker::StarWars.planet
  @usuario_alterado = Faker::Pokemon.name
  @senha_alterada = Faker::Base.numerify('inicial####')
  
  # adiciona os dados no json. 
  body_put = {
      cpf: @cpf_alterado,
      endereco: @endereco_alterado,
      usuario: @usuario_alterado,
      senha: @senha_alterada
  }.to_json
  # pego um cliente aleatorio para ser alterado os dados.
  number = $GlobalPage.number
  get_cliente = Http.get "/#{number}"
  p "Cliente que vai ser alterado: #{get_cliente.body}"
  p "Alterar os dados para: #{body_put}"
  # envia um post com os dados.
  Http.put "/#{number}", body: body_put
  @cliente = $GlobalPage.client_data(number)
end

Entao('esse cliente devera ser atualizado com sucesso') do
  # fazendo todos os meus asserts.
  expect(@cliente['cpf']).to eq @cpf_alterado
  expect(@cliente['endereco']).to eq @endereco_alterado
  expect(@cliente['usuario']).to eq @usuario_alterado
  expect(@cliente['senha']).to eq @senha_alterada
end
