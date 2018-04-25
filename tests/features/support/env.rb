require 'rspec'
require 'cucumber'
require 'httparty'
require 'faker'
require 'cpf_faker'
require_relative '../pages/global_page'
require 'json'

module Http
  include HTTParty
  base_uri 'http://localhost:3000/clientes'
  format :json
  open_timeout 30
  headers 'Content-Type' => 'application/json'
end

# Funções Globais no projeto.
$GlobalPage = GlobalPage.new
