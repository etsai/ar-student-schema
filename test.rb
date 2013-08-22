require_relative 'app/models/student'
require_relative 'app/models/teacher'

test_subject = Student.find_by first_name: 'David'
p test_subject[:teacher_id]

p test_subject_teacher = Teacher.find(test_subject[:teacher_id])

puts "###################################################"
puts "TESTING"
 Student.where(teacher_id: (test_subject[:teacher_id])).each do |student|
  puts student.name
end
