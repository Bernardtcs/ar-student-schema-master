require_relative '../config'

class CreatePeople < ActiveRecord::Migration
	def change
		create_table :people do |t|
			t.string :full_name
			t.string :email
			t.string :phone
			t.string :gender
			t.date :birthday
			t.string :type
		end
	end
end