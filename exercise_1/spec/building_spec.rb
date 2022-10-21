require './lib/room'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  it 'exists' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg).to be_a(Building)
  end
  it 'has a number' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg.number).to eq("623")
  end
  it 'has a name' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg.name).to eq("Savills Apartment Building")
  end
  it 'has has apartments' do
      bldg = Building.new("623", "Savills Apartment Building")
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_3 = Apartment.new
      apt_4 = Apartment.new
      apt_5 = Apartment.new
      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_3)
      bldg.add_apartment(apt_4)
      bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_3, apt_4])
  end
end
