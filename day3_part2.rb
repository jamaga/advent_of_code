require 'set'

file_path = File.expand_path('../day3_input.txt', __FILE__)
input = File.read(file_path)

class Santa
  attr_reader :x, :y, :houses

  def initialize
    @x = 0
    @y = 0
    @houses = Set.new
    deliver
  end

  def up
    @y -= 1
  end

  def down
    @y += 1
  end

  def right
    @x += 1
  end

  def left
    @x -= 1
  end

  def deliver
    houses.add("#{x},#{y}")
  end
end

real_santa = Santa.new
robo_santa = Santa.new

santas = [real_santa, robo_santa].cycle

input.chars.each do |direction|
  santa = santas.next

  case direction
    when '>'
      santa.right
    when '<'
      santa.left
    when '^'
      santa.up
    when 'v'
      santa.down
  end

  santa.deliver
end

all_houses = real_santa.houses.merge(robo_santa.houses)
puts all_houses.count