# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# student = Student.create(name:"ishika", lastname:"karma")

# 10.times do |i|
#   Student.create(name: "student #{i+1}", lastname: "lastname #{i+1}")
# end

# courses = Course.create(course: "Rails", student_id:)

5.times do |i|
  Course.create(course: "course #{i+1}", student_id:"#{i+1}")
end