Dado('que eu envie um registro para delecao') do
  number = $GlobalPage.number # pega o primeiro id da fila.
  p "Deletando cliente pelo id: #{number}"
  body_delete = {id: "#{number}"}.to_json
  @delete = Http.delete "/#{number}", body: body_delete
end

Entao('o registro devera ser deletado do banco com sucesso') do
  expect(@delete['id']).to eq nil
end
