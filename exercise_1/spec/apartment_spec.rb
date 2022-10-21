require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do
  it 'exists' do
    apartment = Apartment.new

    expect(apartment).to be_a(Apartment)
  end

  it 'knows whether it is rented or not' do
    apartment = Apartment.new

    expect(apartment.rented?).to eq(false)
  end

  it 'can be rented' do
    apartment = Apartment.new
    apartment.rent

    expect(apartment.rented?).to eq(true)
  end
  it 'can have no more that 4 rooms' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))
    apartment.add_room(Room.new("bedroom"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.rooms).to be_a(Array)
    expect(apartment.rooms.count).to eq(4)
  end
  it 'lists rooms by alphabet' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end
