ksiazka_tel = {
"Warszawa" => "22",
"Kraków" => "12",
"Łódź" => "42",
"Wrocław" => "71",
"Poznań" => "61",
"Gdańsk" => "58",
"Białystok" => "85"
}

def get_city_names(ksiazka_tel)
  ksiazka_tel.keys
end



def get_area_code(ksiazka_tel, key1)
  if ksiazka_tel.key?(key1)
    puts "For city   #{key1} the code is #{ksiazka_tel[key1]}"
  else
    puts "There is no such area in the Dictionary."
  end
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.upcase
  if answer != "Y"
    puts "Thank you for using the Code Dictionary!"
    break
  else
    get_city_names(ksiazka_tel)
    puts "Which area code do you want to look up?"
    key = gets.chomp.capitalize
    get_area_code(ksiazka_tel, key)
  end
end
