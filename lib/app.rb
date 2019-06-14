require 'sinatra/base'
require_relative 'birthday_decider'


class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday_decider' do
    session[:name] = params['name']
    if BirthdayDecider.new(params[:day], params[:month])
      redirect :happy_birthday
    else
      redirect :day_count
    end
  end

  get '/happy_birthday' do
    @name = session[:name]
    erb :happy_birthday
  end

  run! if app_file == $0
end
