# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
reserve = HotelReservation.new(customer_name: "Andy", date: "07/29/2016", room_number: 1)

reserve.room_number = 2
puts "What's our new room number?"
if reserve.room_number == 2
  puts "#{reserve.room_number}, pass!"
else puts "F"
end

reserve.add_a_fridge
puts "Do we have a fridge?"
if reserve.amenities.include?("fridge")
  puts "Yes, pass!"
else puts "F"
end

reserve.add_a_crib
puts "Do we have a crib?"
if reserve.amenities.include?("crib")
  puts "Yes, pass!"
else puts "F"
end

reserve.add_a_custom_amenity("bananas")
puts "Do we have bananas?"
if reserve.amenities.include?("crib")
  puts "Yes, pass!"
else puts "F"
end
