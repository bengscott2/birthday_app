require 'sinatra/base'
require_relative 'birthday_decider'
require_relative 'day_counter'


class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday_decider' do
    session[:name] = params['name']
    session[:day] = params['day']
    session[:month] = params['month']
    decider = BirthdayDecider.new(params[:day], params[:month])
    if decider.equal_to?
      redirect :happy_birthday
    else
      redirect :day_count
    end
  end

  get '/happy_birthday' do
    @name = session[:name]
    erb :happy_birthday
  end

  get '/day_count' do
    @name = session[:name]
    @days = DayCounter.new(session[:day], session[:month]).count_days
    erb :day_count
  end

  run! if app_file == $0
end
