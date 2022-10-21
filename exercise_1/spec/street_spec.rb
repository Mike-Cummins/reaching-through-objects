require './lib/room'
require './lib/apartment'
require './lib/building'
require './lib/street'

RSpec.describe Street do
  it 'exists' do
    adlington = Street.new("Adlington Road")

    expect(adlington).to be_a(Street)
  end
  it 'has a name' do
    adlington = Street.new("Adlington Road")

    expect(adlington.name).to eq("Adlington Road")
  end
  it 'has buildings' do
    adlington = Street.new("Adlington Road")
    savills = Building.new("623", "Savills Apartment Building")
    zebra = Building.new("123", "Zebra Apartments")

    adlington.add_building(savills)
    adlington.add_building(zebra)

    expect(adlington.buildings).to eq([savills, zebra])
  end
  it 'lists buildings alphabetically' do
    adlington = Street.new("Adlington Road")
    savills = Building.new("623", "Savills Apartment Building")
    zebra = Building.new("123", "Zebra Apartments")
    dog = Building.new("666", "Dog Hotell")

    adlington.add_building(savills)
    adlington.add_building(zebra)
    adlington.add_building(dog)

    expect(adlington.buildings_list).to eq(["Dog Hotell", "Savills Apartment Building", "Zebra Apartments"])
  end
  it 'lists number of available apartments' do
    adlington = Street.new("Adlington Road")
    savills = Building.new("623", "Savills Apartment Building")
    unit_1 = Apartment.new
    unit_2 = Apartment.new

    adlington.add_building(savills)
    savills.add_apartment(unit_1)
    savills.add_apartment(unit_2)

    expect(adlington.number_of_available_apartments).to eq(2)
  end
  it 'lists available apartments with rooms' do
    adlington = Street.new("Adlington Road")
    savills = Building.new("623", "Savills Apartment Building")
    unit_1 = Apartment.new
    unit_2 = Apartment.new
    unit_3 = Apartment.new
    unit_1.add_room("bathroom")
    unit_2.add_room("bedroom")
    zebra = Building.new("123", "Zebra Apartments")
    unit_3.add_room("studio")
    savills.add_apartment(unit_1)
    savills.add_apartment(unit_2)
    zebra.add_apartment(unit_3)
  require 'pry'; binding.pry
    expect(adlington.list_available_apartments).to be_a(Hash)

  end
end
