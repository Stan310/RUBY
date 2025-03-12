require_relative 'Crud'

users = [
  {username: "jano", password: "haslo1"},
  {username: "jano2", password: "haslo2"},
  {username: "jano3", password: "haslo3"},
  {username: "jano4", password: "haslo4"},
  {username: "jano5", password: "haslo5"}
  ]


hashed_users = Crud.create_secure_users(users)
puts hashed_users