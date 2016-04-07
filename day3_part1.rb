require 'set'
# set is allowing us to make sets of numbers and use it as a class and new object of a class -- Set.new
file_path = File.expand_path('../day3_input.txt', __FILE__)
input  = File.read(file_path)

# nasze pozycje w pionie i poziomie
x = 0
y = 0

houses = Set.new
houses.add("#{x},#{y}")

input.chars.each do |direction|
  case direction
    when '>'
      x += 1
    when '<'
      x -= 1
    when '^'
      y -= 1
    when 'v'
      y += 1
  end

  houses.add("#{x},#{y}")
end

puts houses.count