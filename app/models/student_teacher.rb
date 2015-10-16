require_relative '../../db/config'

class StudentTeacher <ActiveRecord::Base

belongs_to :student
belongs_to :teacher

end

#doesnt work:-
# each_student = Student.all
# each_teacher = Teacher.all

# each_student = each_student.first(50)
# evenly_split = Array.new(10) {each_student.shift(5)}

# 	each_teacher.each do |y|
# 		evenly_split.each do |students|
# 			students.each do |student|
# 				p "#{y.first_name} = #{student.first_name}"
# 				puts ""
# 				y.students << student
# 			end
# 		end
# 	end

#evenly distribute students to teachers
each_student = Student.all
each_teacher = Teacher.all

each_student = each_student.first(50)
evenly_split = Array.new(8) {each_student.shift(5)}

counter = 1
		evenly_split.each do |students|
			students.each do |student|
			y = Teacher.find(counter)
			StudentTeacher.create(teacher_id: y.id, student_id: student.id)
		end
		counter += 1
		end

# StudentTeacher.create(teacher_id: 1, student_id: 2)

# p StudentTeacher.all
