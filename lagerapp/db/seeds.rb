# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(loginname: "admin", admin: true, password: "password")
User.create(loginname: "mitarbeiter", admin: false, password: "password")


a = Customer.create(dear: "Frau", firstname: "Hermine", lastname: "Potter", street: "Kanalstrasse 5", city: "Hamburg", plz: "22752", tel: "0407239643", email: "meyer@web", privacypolicy: false)
a1 = Car.create(vehicle: "Audi", registration: "HH-HP 6666", customer_id: a.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 34, dotyear: 15, storage1: true, rack: "2", case: "5", car_id: a1.id)
	

c = Customer.create(dear: "Herr", firstname: "Herbert", lastname: "Meier", street: "Wunschstrasse 547", city: "Hamburg", plz: "21452", tel: "0407239045", email: "asmeyer@web", privacypolicy: true )
c1 = Car.create(vehicle: "Audi", registration: "HH-FK 6666", customer_id: c.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 34, dotyear: 15, storage1: false, rack: "2", case: "5", car_id: c1.id)
	