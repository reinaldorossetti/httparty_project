require_relative 'config'

class StackExchange

  def initialize(service, page)
    @options = {query: {site: service, page: page}}
  end

  def questions
    Http.get("/2.2/questions", @options)
  end

  def users
    Http.get("/2.2/users", @options)
  end
end

stack_exchange = StackExchange.new("stackoverflow", 1)
puts stack_exchange.questions
puts stack_exchange.users