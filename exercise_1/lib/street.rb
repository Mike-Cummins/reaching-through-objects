class Street
  attr_reader :name, :buildings
  def initialize(name)
    @name = name
    @buildings = []
  end
  def add_building(bldg)
    @buildings << bldg
  end
  def buildings_list
    @buildings.map {|bldg| bldg.name}.sort
  end
  def number_of_available_apartments
    @buildings.sum {|bldg| bldg.num_apts_avail}
  end
  def list_available_apartments
  
    @buildings.map {|bldg| bldg.apts_avail}.to_h

  end
end
