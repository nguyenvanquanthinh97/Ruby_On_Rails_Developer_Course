dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanson" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  return somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  return somehash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name ? (Y/N)"
  input_choice = gets.chomp.upcase
  break if input_choice != 'Y'
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  input_city = gets.chomp
  if dial_book.include?(input_city)
    puts "The area code for #{input_city} is #{get_area_code(dial_book, input_city)}"
  else
    puts "You entered an invalid city name"
  end
end
