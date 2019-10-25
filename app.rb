require_relative 'config/environment'

class App < Sinatra::
    
    configure do
        enable :sessions
        set :session_secret, "1234catmeow"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
       @purchase = params[:item] 
    end

end