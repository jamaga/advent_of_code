file_path = File.expand_path('../day2_input.txt', __FILE__)
presents_boxes  = File.readlines(file_path)

total_m2_paper = 0

presents_boxes.each do |present|
  #rozbieram kazdy prezent na scianki pomijajac znak x
  sides = present.split('x').map(&:to_i)

  # digits.combination(digits.length) - ktore digits sie kombinuja
  area_of_paper = sides.combination(2).map do |side_one, side_two|
    side_one * side_two
  end

  total_m2_paper += area_of_paper.inject(:+) * 2
  total_m2_paper += area_of_paper.min
end

puts total_m2_paper