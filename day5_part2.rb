file_path = File.expand_path('../day5_input.txt', __FILE__)
strings_from_file = File.readlines(file_path)

strings_from_file.select! do |string|
  string.chars.each_cons(3).any? { |a, _b, c| a == c }
end

strings_from_file.select! do |string|
  (string.length - 3).times.any? do |index|
    pair = string[index, 2]

    string[(index + 2)..-1].chars.each_cons(2).map(&:join).any? { |pair2| pair2 == pair }
  end
end
puts strings_from_file.count