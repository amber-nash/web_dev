# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doctor_list = [
  [ "Jeremy Molar", "Orthodontic Surgery" ],
  [ "Francine Fang", "Pediatric Orthodontics" ],
  [ "Millie Smilez", "Geriactic Orthodontist" ],
  [ "Robert Grin", "Orthodontist" ]
]

doctor_list.each do |name, specialty|
  Doctor.create( name: name, specialty: specialty )
end
