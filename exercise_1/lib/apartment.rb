class Apartment
  attr_reader :rooms
    def initialize
      @rooms = []
      @rented = false
    end
    def rented?
      @rented
    end
    def rent
      @rented = true
    end
    def add_room(room)
      if @rooms.count < 4
         @rooms << room
       end
    end
    def rooms_by_name_alphabetically
      @rooms.map {|room| room.name }.sort
    end
end
