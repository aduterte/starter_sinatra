class StudentsController < Sinatra::Base

    set :views, "app/views/students"
    set :method_override, true
    set :layout => true
    
    get '/students' do 
        @students = Student.all
        erb :index
    end

    get '/students/new' do 
        erb :new
    end

    post '/students' do
        student = Student.create(name: params[:name])
        redirect "/students/#{student.id}"
    end

    get '/students/:id' do
        @student = Student.find(params[:id])
        @cohort = []
        @cohort << Cohort.where(student_id: @student.id)
        erb :show
    end

    get '/students/:id/edit' do 
        @student = Student.find(params[:id])
        erb :edit
    end

    patch '/students/:id' do
        @student = Student.find(params[:id])
        # @student.name = params[:name]
        @student.update(name: params[:name])
        redirect "/students/#{@student.id}"
    end

    delete '/students/:id' do 
        student = Student.find(params[:id])
        student.destroy
        redirect '/students'
    end

end

