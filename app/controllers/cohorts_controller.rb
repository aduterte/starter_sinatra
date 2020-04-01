class CohortsController < Sinatra::Base 


    set :views, "app/views/cohort"
    set :method_override, true

    get '/cohorts' do
        @cohort = Cohort.all 
        erb :index
    end

    get '/cohorts/new' do
        erb :new
    end

end