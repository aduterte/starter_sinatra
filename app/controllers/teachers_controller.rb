class TeachersController < Sinatra::Base 

    set :views, "app/views/teachers"
    set :method_override, true

    get '/teachers' do
        @teachers = Teacher.all
        erb :index
    end

    get '/teachers/new' do
       erb :new
    end

    post '/teachers' do
        @teacher = Teacher.create(name: params[:name])
        redirect "/teachers/#{@teacher.id}"
    end

    get '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        erb :show
    end

    get '/teachers/:id/edit' do 
        @teacher = Teacher.find(params[:id])
        erb :edit
    end

    patch '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        # @teacher.name = params[:name]
        @teacher.update(name: params[:name])
        redirect "/teachers/#{@teacher.id}"
    end

    delete '/teachers/:id' do 
        teacher = Teacher.find(params[:id])
        teacher.destroy
        redirect '/teachers'
    end
    





end