require 'httparty'

module Http
  include HTTParty
  base_uri 'api.stackexchange.com'
  format :json
  open_timeout 20
end
