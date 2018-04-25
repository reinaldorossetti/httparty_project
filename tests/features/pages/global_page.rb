# require_relative '../support/env'

class GlobalPage

  #include Http

  # Get First Client ID.
  def number
    request = Http.get '/'
    request_payload = JSON.parse request.body
    # pegando o primeiro elemento do json para deletar.
    number = request_payload.first["id"].to_i
    p "UserId: #{number}"
    number
  end

  # Get user data by id.
  def client_data(id)
    request = Http.get "/#{id}"
    request_payload = JSON.parse request.body
    raise "Codigo de retorno errado obtido #{request.code}, esperado 200" unless request.code == 200
    request_payload
  end
end

# test = GlobalPage.new
# dic = test.client_data(8)
# p dic["nome"]