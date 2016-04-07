file_path = File.expand_path('../day5_input.txt', __FILE__)
strings_from_file = File.readlines(file_path)

strings_from_file.reject! { |string| string =~ /ab|cd|pq|xy/ }

strings_from_file.reject! do |string|
  string.chars.select { |char| %w(a e i o u).include?(char) }.count < 3
end

strings_from_file.select! do |string|
  string.chars.each_cons(2).any? { |a, b| a == b }
end

puts strings_from_file.count