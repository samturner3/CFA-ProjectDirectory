
require 'date'
year = Date.today.strftime("%Y").to_i

#######FUNCTIONS######
def greeting(name)
  puts "Hello " + name
end
#####################
def age (born)
     age = 2017 - born
     puts "you will be turning " + age.to_s + " this year."
      if age > 60
         puts "You are old :("
      elsif age.between?(40, 60)
        puts "You are getting on in life"
      elsif age.between?(20, 40)
        puts "You have well and truely started your life"
      elsif age.between?(12, 20)
        puts "You are a teen"
      elsif age < 12
        puts "you are too young"
      else
        puts "Unknown"
    end

end
#####################
def is_it_hot(temp)
 if temp > 30
     puts "Its HOT! wear shorts!"
   elsif temp > 10
     puts "Not too Hot, wear pants."
   else
     puts "Cold! Wrap up!"
   end
end

#######MAIN CODE######

puts "Hi, What is your name?"
name = gets
greeting(name)

loop do
  puts "What year were your born?"
  born = gets.to_i

  if !(1900..(year)).include? born
    puts "Sorry, please enter a year between 1900 and " + year.to_s + "."
    next
 else
   age(born)
   break
  end
end


puts "What is the temp?"
temp = gets.to_i
is_it_hot(temp)
