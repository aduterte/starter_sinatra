class Student < ActiveRecord::Base
    has_many :teachers, through: :cohorts
end