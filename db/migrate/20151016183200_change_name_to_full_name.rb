require_relative '../config'
require_relative '../../test.rb'

class ChangeNameToFullName < ActiveRecord::Migration
	def up
		add_column :people, :full_name, :string

		Person.all.each do |p|
			p.full_name = "#{p.first_name} #{p.last_name}"
			p.save
		end

		remove_column :people, :first_name
		remove_column :people, :last_name
	end

	def down
		add_column :people, :first_name, :string
		add_column :people, :last_name, :string

		Person.all.each do |p|
			p.first_name = p.full_name.split(" ").first
			p.last_name = p.full_name.split(" ")[1..-1].join(" ")
			p.save
		end
		remove_column :people, :full_name
	end
end