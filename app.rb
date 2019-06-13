require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/birthday_decider' do
    @name = params[:name]
    erb :happy_birthday
  end

  run! if app_file == $0
end
