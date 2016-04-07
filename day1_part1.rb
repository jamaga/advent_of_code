file_path = File.expand_path("../day1_part1_txt.txt", __FILE__)
bracket_input = File.read(file_path)

floor_up   = bracket_input.scan(/\(/).count
floor_down = bracket_input.scan(/\)/).count

end_floor = floor_up - floor_down

puts end_floor