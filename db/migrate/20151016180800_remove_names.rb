require_relative '../config'

class RemoveNames <ActiveRecord::Migration

	def up
		remove_column :people, :full_name
        add_column :people, :first_name, :string
        add_column :people, :last_name, :string
	end

	def down
        add_column :people, :full_name
        remove_column :people, :first_name, :string
        remove_column :people, :last_name, :string
	end

end