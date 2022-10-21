class Building
  attr_reader :number, :name
  def initialize(number, name)
    @number = number
    @name = name
    @apartments = []
  end
  def add_apartment(apt)
    if @apartments.count < 4
      @apartments << apt
    end
  end
  def list_apartments
    @apartments
  end
  def num_apts_avail
    @apartments.map {|apt| apt.rented? == false}.count
  end
  def apts_avail
    avail = []
    @apartments.map do |apt|
      if apt.rented? == false
        avail << apt
      end
    end
    avail
  end
end
