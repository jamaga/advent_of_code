file_path = File.expand_path('../day2_input.txt', __FILE__)
presents_boxes  = File.readlines(file_path)

total_ribbon = 0

presents_boxes.each do |one_present|
  boxes_sides = one_present.split('x').map(&:to_i)

  # zeby opakowac prezent liczymy obwod NAJMNIEJSZEJ ze stron
  total_ribbon += boxes_sides.sort.min(2).inject(:+) * 2
  # zeby zrobic wstazke, robimy jak w przykladzie-kazda cyfre mnozymy przez kazda - a x b x c --> a*b*c
  total_ribbon += boxes_sides.inject(:*)
end

puts total_ribbon