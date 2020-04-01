class ApplicationController < Sinatra::Base
    
    
    set :method_override, true

    configure do
        set :public_folder, 'public'
        set :views, 'app/views/about'
    end

    get '/' do 
        erb :index
    end

    get '/about' do 
        erb :about
    end

end
