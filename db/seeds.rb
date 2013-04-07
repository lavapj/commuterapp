# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@ctBus = Commutetype.create(name:"bus", description:"You rode the bus!")
CommuteAttribute.create(cash: 5, cash_fr: true, calories: 3, calories_fr: false, envfp: 5, envfp_fr: false, passenger: 0, commutetype_id:@ctBus.id)
@ctCar = Commutetype.create(name:"car", description:"You drove!")
CommuteAttribute.create(cash: 10, cash_fr: false, calories: 1, calories_fr: true, envfp: 8, envfp_fr: false, passenger: 0, commutetype_id:@ctCar.id)
@ctBike = Commutetype.create(name:"bike", description:"You pedeled your metal!")
CommuteAttribute.create(cash: 3, cash_fr: true, calories: 5, calories_fr: false, envfp: 3, envfp_fr: false, passenger: 0, commutetype_id:@ctBike.id)
@ctWalk = Commutetype.create(name:"walk", description:"You hoofed it!")
CommuteAttribute.create(cash: 1, cash_fr: true, calories: 10, calories_fr: false, envfp: 1, envfp_fr: false, passenger: 0, commutetype_id:@ctWalk.id)
