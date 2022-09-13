require 'pry-byebug'
def caesar_cipher(string, shift)
  puts " ".ord.between?("a".ord, "z".ord) || " ".ord.between?("A".ord, "Z".ord)
  puts "z".ord
  puts "Z".ord
  puts "a".ord
  puts "A".ord
  base_downcase = "a".ord
  base_upcase = "A".ord
  array_of_chars = string.split(//)
  shifted_array = array_of_chars.map do |char|
    if char.ord.between?("a".ord, "z".ord) || char.ord.between?("A".ord, "Z".ord)
      if char == char.downcase
        char_value = char.ord - base_downcase
        (((char_value + shift) % 26) + base_downcase).chr
      elsif char == char.upcase
        char_value = char.ord - base_upcase
        (((char_value + shift) % 26) + base_upcase).chr
      else
        char
      end
    else
      char
    end
  end
  puts shifted_array.join("")
end
