# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#locations = location.create([{})
tons = Unit.create({:name=>"Tons"})
kilos = Unit.create({:name=>"Kilos"})
gallons = Unit.create({:name=>"Gallons"})
cups = Unit.create({:name=>"Cups"})
kegs = Unit.create({:name=>"Kegs"})

Location.create({:name=>"name1", :region=>"r1", :district=>"d1", :ward=>"w1", :town=>"t1"})
Location.create({:name=>"name2", :region=>"r2", :district=>"d2", :ward=>"w2", :town=>"t2"})
Location.create({:name=>"name1", :region=>"r2", :district=>"d1", :ward=>"w1", :town=>"t3"})
Location.create({:name=>"name1", :region=>"r2", :district=>"d1", :ward=>"w1", :town=>"t4"})


quality_a = Quality.create({:name=>'a'})
quality_b = Quality.create({:name=>'b'})
quality_c = Quality.create({:name=>'c'})

Commodity.create({:englishName=>"Corn", :swahiliName=>"s-corn", :farmgateUnit=>tons, :deliveredUnit=>tons, :retail_unit_id=>tons, :wholesale_unit_it=>cups })
Commodity.create({:englishName=>"Corn", :swahiliName=>"s-corn",  :farmgateUnit=>gallons })
Commodity.create({:englishName=>"Corn", :swahiliName=>"s-corn" })
Commodity.create({:englishName=>"Wheat", :swahiliName=>"s-wheat" })
Commodity.create({:englishName=>"Wheat", :swahiliName=>"s-wheat" })
Commodity.create({:englishName=>"Wheat", :swahiliName=>"s-wheat" })
Commodity.create({:englishName=>"ganga", :swahiliName=>"s-weed" })
Commodity.create({:englishName=>"ganga", :swahiliName=>"s-weed" })
Commodity.create({:englishName=>"ganga", :swahiliName=>"s-weed" })

