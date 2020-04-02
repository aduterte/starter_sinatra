class ApplicationController < Sinatra::Base
    
    
    set :method_override, true

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

    get '/' do 
        erb :'/about/about'
    end

    get '/about' do 
        erb :'/about/about'
    end

end
