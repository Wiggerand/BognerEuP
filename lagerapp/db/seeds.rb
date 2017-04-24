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
a2 = Car.create(vehicle: "Audi", registration: "HH-HP 7777", customer_id: a.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 34, dotyear: 15, storage1: true, rack: "2", case: "5", car_id: a1.id)
	
b = Customer.create(dear: "Frau", firstname: "Christine", lastname: "Müller", street: "Bergstrasse 34", city: "Hamburg", plz: "22752", tel: "0406239643", email: "potter@gmail", privacypolicy: true)
b1 = Car.create(vehicle: "Ford", registration: "HH-HP 6666", customer_id: b.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 12, dotyear: 17, storage1: true, rack: "1", case: "5", car_id: b1.id)

c = Customer.create(dear: "Herr", firstname: "Herbert", lastname: "Meier", street: "Wunschstrasse 547", city: "Hamburg", plz: "21452", tel: "0405239085", email: "asmeyer@web", privacypolicy: true )
c1 = Car.create(vehicle: "Porsche", registration: "HH-FK 6666", customer_id: c.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 5, dotyear: 13, storage1: false, rack: "5", case: "3", car_id: c1.id)
	
d = Customer.create(dear: "Herr", firstname: "Andrew", lastname: "Schneider", street: "Kanalstrasse 5", city: "Hamburg", plz: "22752", tel: "040745727", email: "awiggers@live.de", privacypolicy: true)
d1 = Car.create(vehicle: "Tesla", registration: "HH-AS 666", customer_id: d.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 51, dotyear: 15, storage1: true, rack: "3", case: "2", car_id: d1.id)

e = Customer.create(dear: "Herr", firstname: "Thomas", lastname: "Bender", street: "Hermelinweg 8", city: "Hamburg", plz: "22752", tel: "040236876", email: "bender@web", privacypolicy: false)
e1 = Car.create(vehicle: "BMW", registration: "HH-TB 6666", customer_id: e.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 39, dotyear: 12, storage1: false, rack: "5", case: "1", car_id: e1.id)

f = Customer.create(dear: "Firma", firstname: "", lastname: "ADT Sensormatic", street: "Schimmelweg 44", city: "Ratingen", plz: "44048", tel: "02217239643", email: "sensormatic@sensormatic", privacypolicy: false)
f1 = Car.create(vehicle: "Skoda", registration: "ME-XX 1234", customer_id: f.id)
f2 = Car.create(vehicle: "Skoda", registration: "ME-XX 1235", customer_id: f.id)
f3 = Car.create(vehicle: "Skoda", registration: "ME-XX 1236", customer_id: f.id)
f4 = Car.create(vehicle: "Skoda", registration: "ME-XX 1237", customer_id: f.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 22, dotyear: 16, storage1: true, rack: "10", case: "3", car_id: f1.id)
Tire.create(producer: "Firstone", tiresize: "265/70 R15", dotweek: 12, dotyear: 15, storage1: false, rack: "10", case: "5", car_id: f2.id)

Tire.create(producer: "Bridgestone", tiresize: "265/70 R15", dotweek: 52, dotyear: 11, storage1: false, rack: "8", case: "1", car_id: f4.id)

g = Customer.create(dear: "Frau", firstname: "Alexandra", lastname: "Schröder", street: "Am Weiher 51", city: "Hamburg", plz: "22752", tel: "0407239643", email: "autowerkstatt@web.de", privacypolicy: false)
g1 = Car.create(vehicle: "Chervrolet", registration: "HH-AS 6666", customer_id: g.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 31, dotyear: 14, storage1: true, rack: "4", case: "7", car_id: g1.id)

h = Customer.create(dear: "Herr", firstname: "Kassandra", lastname: "Maja", street: "Sanmannreihe 36", city: "Hamburg", plz: "21031", tel: "0407239643", email: "maja@web", privacypolicy: true)
h1 = Car.create(vehicle: "Bugatti", registration: "HH-KM 6666", customer_id: h.id)
Tire.create(producer: "Kleber", tiresize: "265/70 R15", dotweek: 1, dotyear: 11, storage1: true, rack: "3", case: "9", car_id: h1.id)