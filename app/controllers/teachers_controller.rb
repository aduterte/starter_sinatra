class TeachersController < Sinatra::Base 

    set :views, "app/views"
    set :layout, true
    set :method_override, true

    get '/teachers' do
        @teachers = Teacher.all
        erb :'/teachers/index'
    end

    get '/teachers/new' do
       erb :'/teachers/new'
    end

    post '/teachers' do
        @teacher = Teacher.create(params[:new])
        redirect "/teachers/#{@teacher.id}"
    end

    get '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        erb :'/teachers/show'
    end

    get '/teachers/:id/edit' do 
        @teacher = Teacher.find(params[:id])
        erb :'/teachers/edit'
    end

    patch '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        # @teacher.name = params[:name]
        @teacher.update(params[:edit])
        redirect "/teachers/#{@teacher.id}"
    end

    delete '/teachers/:id' do 
        teacher = Teacher.find(params[:id])
        teacher.destroy
        redirect '/teachers'
    end
    

end