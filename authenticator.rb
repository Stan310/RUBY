users = [
{username: "jano", password: "haslo1"},
{username: "jano2", password: "haslo2"},
{username: "jano3", password: "haslo3"},
{username: "jano4", password: "haslo4"},
{username: "jano5", password: "haslo5"}
]

def auth_user(username, password, list_of_users)
  
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password then
      return user_record
      
    end
  end
"Niepoprawne dane"
end
puts "HERZLICH WILKOMMEN IM AUTHENTIKATOR"
30.times {print"-"}

puts "\nTEN PROGRAM POBIERZE OD CIEBIE TWOJE DANE I POROWNA JE Z BAZĄ"
i=3

while i > 0 
puts "USERNAME: "
username = gets.chomp
puts "PASSWORD: "
password = gets.chomp

aut = auth_user(username, password, users)
puts aut
puts "Nacisnij 'e' aby wyjsc lub cokolwiek zeby kontynuowac"
klawisz = gets.chomp.downcase
if klawisz == "e" || i ==0 then break end
i-=1
end
if i == 0 then puts "Przekroczono liczbe podejsc" end