20.times do |t|
	project=Project.create(name:"Project#{t}", description:"This is project #{t}")
	5.times do |s|
		project.entries.create(hours:"#{24-s}",minutes:"#{60-s}",comments:"This is comment #{s}")
	end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
