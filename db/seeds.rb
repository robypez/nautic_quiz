# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Section.create([
  { id: 1,
    name: 'Teoria della vela'},
  { id: 2,
    name: 'Motori endotermici'},
  { id: 3,
    name: 'Sicurezza della navigazione'},
  { id: 4,
    name: 'Segnalamento marittimo'},
  { id: 5,
    name: 'Meteorologia'},
  { id: 6,
    name: 'Navigazione'},
  { id: 7,
    name: 'Normativa diportistica'}])
