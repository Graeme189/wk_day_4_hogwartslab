require('pry')

require_relative('../models/student')

HogwarStudent.delete_all()

student1 = HogwartsStudent.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 11
  })

student2 = HogwartsStudent.new({
  "first_name" => "Hermione",
  "last_name" => "Grainger",
  "house" => "Gryffindor",
  "age" => 12
  })

student1.save
student2.save

binding.pry
nil
