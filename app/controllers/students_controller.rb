class StudentsController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true
    set :layout => true
    
    get '/students' do 
        @students = Student.all
        erb :'/students/index'
    end

    get '/students/new' do 
        erb :'/students/new'
    end

    post '/students' do
        student = Student.create(name: params[:name])
        binding.pry
        if !params[:teacher][:id].empty?
            params[:teacher][:id].each do |teacher|
                Cohort.create(student_id: student.id, teacher_id: teacher.to_i)
            end
        end
        redirect "/students/#{student.id}"
    end

    get '/students/:id' do
        @student = Student.find(params[:id])
        #removed cohort thing because active records wasn't working before
        erb :'/students/show'
    end

    get '/students/:id/edit' do 
        @student = Student.find(params[:id])
        erb :'/students/edit'
    end

    patch '/students/:id' do
        @student = Student.find(params[:id])
        # @student.name = params[:name]
        # binding.pry
        @student.update(params[:student])

        if !params[:teacher][:id].empty?
            params[:teacher][:id].each do |teacher_id|
            # binding.pry
                cohort = Cohort.where(student_id: @student.id, teacher_id: teacher_id.to_i)[0]
                # binding.pry
                Cohort.create(student_id: @student.id, teacher_id: teacher_id.to_i) if cohort == nil
                
            end
        end
        redirect "/students/#{@student.id}"
    end

    delete '/students/:id' do 
        student = Student.find(params[:id])
        student.destroy
        redirect '/students'
    end

end

