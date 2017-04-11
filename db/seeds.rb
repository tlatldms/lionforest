puts "Inserting..."
[
    ["사랑"],
    ["치킨"],
    ["피자"],
    ["통학"],
    ["고민"],
    ["봄"],
    ["벚꽃"]
    ].each do |x| 
        Category.create(name: x[0])
    end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
