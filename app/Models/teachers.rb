class Teacher < ActiveRecord::Base 
    has_many :students, through: :cohorts
end

