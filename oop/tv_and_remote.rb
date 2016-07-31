# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class TV
  attr_accessor :power, :volume, :channel

    def initialize
      @power = false
      @volume = 0
      @channel = 0
    end
end

class Remote
  attr_accessor :tv

  def initialize
  	@tv = TV.new
  end

  def toggle_power
    @tv.power = !(@tv.power)
    puts @tv.power == true ? "It's on!" : "It's off!"
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    puts @tv.volume == 0 ? "The volume is at 0!" : @tv.volume -= 1
  end

  def set_channel(integer)
    @tv.channel = integer
    puts "Channel #{@tv.channel}"
  end
end

# Driver code:
remote = Remote.new

puts "Testing TV class power method:"
puts remote.tv.power == false ? "Pass!" : "F"

puts "Testing TV class volume method:"
puts remote.tv.volume == 0 ? "Pass!" : "F"

puts "Testing TV class channel method:"
puts remote.tv.channel == 0 ? "Pass!" : "F"

puts "Testing Remote class toggle_power method:"
remote.toggle_power
puts remote.tv.power == true ? "Pass!" : "F"

5.times { remote.increment_volume }
puts "Testing Remote class increment_volume method:"
puts remote.tv.volume == 5 ? "Pass!" : "F"

4.times { remote.decrement_volume }
puts "Testing Remote class decrement_volume method:"
puts remote.tv.volume == 1 ? "Pass!" : "F"

remote.set_channel(5)
puts "Testing Remote class set_channel method:"
puts remote.tv.channel == 5 ? "Pass!" : "F"
