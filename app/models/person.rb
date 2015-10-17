require_relative '../../db/config'

class Person < ActiveRecord::Base
	validates :email, uniqueness: true, format: {with: /.+@.+[.][^.]{2,}\z/}
	validates :phone, format: {with: /.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d.*\d/}
# validates :full_name, presence: true
	def name
		"#{self.first_name} #{self.last_name}"
	end

	def age
		now = Date.today
		age = now.year - birthday.year
	end
end

