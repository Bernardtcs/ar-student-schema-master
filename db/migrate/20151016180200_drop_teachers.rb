require_relative '../config'

class DropTeachers <ActiveRecord::Migration

	def up
		drop_table :teachers
	end

	def down
		create_table :teachers do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :phone
		end
	end

end
