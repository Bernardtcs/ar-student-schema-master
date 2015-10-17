require_relative '../../db/config'
require_relative 'person'

class Teacher < Person
	has_many :student_teachers
	has_many :students, through: :student_teachers

# validates :email, uniqueness: true, format: {with: /.+@.+[.][^.]{2,}\z/}
# validates :phone, format: {with: /.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d/}
# validates :first_name, presence: true
# validates :last_name, presence: true

end

#combine the table

#create 9 teachers
# a = Person.create(first_name: 'Teacher1', last_name: 'Last1', email: 't1@gmail.com', phone: '1234567897')
# b = Person.create(first_name: 'Teacher2', last_name: 'Last2', email: 't2@gmail.com', phone: '1268567897')
# c = Person.create(first_name: 'Teacher3', last_name: 'Last3', email: 't3@gmail.com', phone: '1434567897')
# d = Person.create(first_name: 'Teacher4', last_name: 'Last4', email: 't4@gmail.com', phone: '1534567897')
# e = Person.create(first_name: 'Teacher5', last_name: 'Last5', email: 't5@gmail.com', phone: '1634567897')
# f = Person.create(first_name: 'Teacher6', last_name: 'Last6', email: 't6@gmail.com', phone: '1734567897')
# g = Person.create(first_name: 'Teacher7', last_name: 'Last7', email: 't7@gmail.com', phone: '1834567897')
# h = Person.create(first_name: 'Teacher8', last_name: 'Last8', email: 't8@gmail.com', phone: '1934567897')
# i = Teacher.create(first_name: '', last_name: '', email: 'yh@gmail.com', phone: '1244586797')

# p Teacher.all