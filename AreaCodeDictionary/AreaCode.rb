#Hash
dial_book = {
   "city1" => 1, "city2" => 10, "city3" => 11, "city4" => 100, "city5" => 101,
   "city6" => 110, "city7" => 111, "city8" => 1_000, "city9" => 1_001, "city10" => 1_010
}

def get_city_names (somehash)
  somehash.each { |k, v| 
    print k
    print " "
    }
  print "\n"
end

def get_area_code (somehash, key)
  somehash[key]
end

def is_valid_city (hash,key)
  # verify if the city entry is valid
  until hash.include? (key)
    puts "You entered a city name not in the dictionary"
    puts "Please, enter a valid city:"
    key = gets.chomp
  end
  puts "The area code for #{key} is #{get_area_code(hash, key)}"
end

def positive_method (somehash)
  get_city_names (somehash)
  puts "Which city you want to see the area code ?"
  prompt = gets.chomp
  is_valid_city(somehash, prompt)
end

loop do
  puts "Do you want to lookup an area code based on city name ? (Y/N)" 
  answear = gets.chomp
  if answear.capitalize! == "Y"
    positive_method (dial_book)
  elsif answear == "N"
    break
  else
    puts "Enter a valid answear"
  end
end