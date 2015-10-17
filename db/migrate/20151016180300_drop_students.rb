require_relative '../config'

class DropStudents <ActiveRecord::Migration

	def up
		drop_table :students
	end

	def down
    create_table :students do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :gender
    	t.date :birthday
    	t.string :email
    	t.string :phone
    	t.datetime :created_at
    	t.datetime :updated_at
    end
	end

end
