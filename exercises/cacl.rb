def displayResult(result)
  if result == 42
    puts "The meaning of life!"
  end
  puts "*****************"
  puts result.to_f
  puts "*****************

  "
  sleep(1)

end

def add (first,second)
  result = first + second
  displayResult(result)
  # puts result.to_f
end

def subtract (first,second)
  result = first - second
  displayResult(result)
  # puts result.to_f
end

def multiply (first,second)
  result = first * second
  displayResult(result)
  # puts result.to_f
end


loop do
  puts "Please enter first number"
  first = gets.to_f
  puts "Please enter a second number"
  second = gets.to_f

  puts "
  Would you like to
  1) Add the two numbers
  2) Subtract the two numbers
  3) Multiply the two numbers
  4) Exit

  Please type 1,2,3 or 4"
  selection = gets.to_i
  #if !(1..4).include? selection

  if selection == 1
    add(first,second)
    sleep(2)
  elsif selection == 2
    subtract(first,second)
  elsif selection == 3
    multiply(first,second)
  elsif selection == 4
  puts "Exiting"
    exit
  else
    puts "Sorry, please enter a valid option."
    next
  end
end
