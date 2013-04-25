# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
nivels = Nivel.create([{nombre: 'Admin'}, {nombre: 'other'}, {nombre: 'pasthor'}, {nombre: 'member'}])

User.create(email: 'cliente@cliente.com', password: 'cliente123', password_confirmation: 'cliente123', nivel: "cliente")
User.create(email: 'iverherlandth@gmail.com', password: 'erlans1', password_confirmation: 'erlans1', nivel: "Admin")
User.create(email: 'empresa@empresa.com', password: 'empresa123', password_confirmation: 'empresa123', nivel: "empresa")

