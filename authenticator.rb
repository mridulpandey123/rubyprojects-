users=[{username:"mridul",password:"password"},{username:"mridul1",password:"password1"},{username:"mridul2",password:"password2"},{username:"mridul3",password:"password3"},{username:"mridul4",password:"password4"}]

def auth_user(name,pass,record)
  record.each do |user|
    if user[:username] ==  name && user[:password] == pass
      return user
    end
  end
  "credentials are not correct"
end
puts"\twelcome to the authenticator!"
40.times{print"_"}
puts"\n\nThis program will take input from user and compare password"
attempts=1
while attempts<4
  puts"\nUsername:"
  username=gets.chomp
  puts"Password:"
  password=gets.chomp
  authentication = auth_user(username,password,users)
  p authentication
  puts"press n to Quit or any other key to continue "
  input=gets.chomp.downcase
  break if input=="n"
  attempts+=1  
end
puts"attempts exceeded" if attempts == 4