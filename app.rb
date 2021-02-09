require 'sinatra/base'
require './lib/peep'
require './lib/user'
require './database_connection_setup'

class Chitter < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :"peeps/index"
  end

  get '/peeps/new' do
    erb :"peeps/new"
  end

  post '/peeps' do
    Peep.create(post: params[:peep])
    redirect '/peeps'
  end

  get '/user/new' do
    erb :"user/new"
  end

  post '/user' do
    User.create(email: params[:email], password: password[:password])
    redirect '/peeps'
  end

  run! if app_file == $0
end
