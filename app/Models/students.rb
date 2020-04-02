class Student < ActiveRecord::Base
    has_many :cohorts
    has_many :teachers, through: :cohorts
end