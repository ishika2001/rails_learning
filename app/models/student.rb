class Student < ApplicationRecord
  has_one :enrollment
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects, dependent: :destroy
end
