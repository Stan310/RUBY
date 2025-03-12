module Crud
  require 'bcrypt'
  
  puts "Module CRUD activated"

  def create_hash_password(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_password(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_password(user_record[:password])
    end
    list_of_users
  end


  def authenticate_user(username, password, new_users)
    new_users.each do |user_record|
      if user_record[:username] == username && verify_hash_password(user_record[:password]) == password
        return user_record
      end
    end
    "Incorrect credentials"

  end

end