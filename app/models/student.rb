require_relative '../../db/config'
require_relative 'person'

class Student < Person
	has_many :student_teachers
	has_many :teachers, through: :student_teachers
# implement your Student model here
	# validates :email, uniqueness: true, format: {with: /.+@.+[.][^.]{2,}\z/}
	# validates :age, numericality: {greater_than_or_equal_to: 5}
	# validates :phone, format: {with: /.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d/}
	# validates :first_name, presence: true
	# validates :last_name, presence: true




end

# a = Student.where(first_name: 'Kyle').first <==cant test this way
# p a.name
# a = Student.find_by(first_name: "Kyle")
# a.name
# a = Student.find(1)
# a.age

# b = Student.create(first_name: 'Amy', last_name: 'Loo', email: 'amy.loo@gmail.com', birthday: '1992-06-18', phone: '2123456786')
# b.save
# p b
# p Student.all

# c = Student.create(first_name: 'Food', last_name: 'Lala', email: 'aaa@gmail.com', birthday: '1991-06-18', phone: '5674')
# c.save
# p c


