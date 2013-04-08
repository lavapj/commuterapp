# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@ctBus = CommuteType.create(name:"bus", description:"You rode the bus!")
CommuteAttribute.create(cash: 5, cash_fr: true, calories: 0, calories_fr: false, envfp: 163, envfp_fr: false, commute_type_id:@ctBus.id)
@ctCar = CommuteType.create(name:"car", description:"You drove!")
CommuteAttribute.create(cash: 2, cash_fr: false, calories: 0, calories_fr: true, envfp: 364, envfp_fr: false, commute_type_id:@ctCar.id)
@ctBike = CommuteType.create(name:"bike", description:"You pedeled your metal!")
CommuteAttribute.create(cash: 0, cash_fr: true, calories: 53, calories_fr: false, envfp: 0, envfp_fr: false, commute_type_id:@ctBike.id)
@ctWalk = CommuteType.create(name:"walk", description:"You hoofed it!")
CommuteAttribute.create(cash: 0, cash_fr: true, calories: 116, calories_fr: false, envfp: 0, envfp_fr: false, commute_type_id:@ctWalk.id)
