require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end
  
  get "/say/:number/:phrase" do
    list_phrase = ' '
    params[:number].to_i.times do
      list_phrase += params[:phrase]
    end
    list_phrase
  end

  

end