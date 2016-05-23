# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Clinician.create( name: 'John Smith', email: 'j.smith@nhs.net', location: 'Oxford', specialism: 'Dermatology')
Clinician.create( name: 'Suzie Jones', email: 's.jones@nhs.net', location: 'Oxford', specialism: 'Sports Medicine')
