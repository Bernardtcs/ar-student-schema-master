require 'byebug'
require_relative 'app/models/student'
require_relative 'app/models/teacher'
require_relative 'app/models/student_teacher'

# Student.all

# student = Student.where(first_name: "Kyle")
# p student
# p student = Student.find(1)

#evenly distribute students to teachers
#test: give a student can find a teacher? can find all student of a teacher

# p each_student = Student.all
# p each_teacher = Teacher.all

# each_student = each_student.first(50)
# evenly_split = Array.new(8) {each_student.shift(5)}

# counter = 1
# 		evenly_split.each do |students|
# 			students.each do |student|
# 			y = Teacher.find(counter)
# 			StudentTeacher.create(teacher_id: y.id, student_id: student.id)
# 		end
# 		counter += 1
# 		end



	# each_teacher.each do |y|
	# 	p StudentTeacher.create(teacher_id: "#{y.first_name}" student_id: "#{evenly_split}")
	# 	puts ""
	# end

# StudentTeacher.create(teacher_id: y, student_id: evenly_split)

# p StudentTeacher.all
# f = Student.find(1)
# p f
# s = StudentTeacher.where(teacher_id: 1)
# p s