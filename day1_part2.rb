file_path = File.expand_path("../day1_part1_txt.txt", __FILE__)
bracket_input     = File.read(file_path)

bracket_input.chars.each_with_index.inject(0) do |floor, (brackets, index)|
  if brackets == "("
    floor += 1
  else
    floor -= 1
  end

  if floor < 0
    puts index + 1
    break
  end
  floor
end