@balance = 100.00
#command = null

#######FUNCTIONS######
def withdraw(amount)
  puts "Starting Balance "
  displayBalance(@balance)
  puts "
  withdraw amount = $#{amount}."

if amount > @balance
      puts "Not enough funds
      "
      sleep(2)
    else
      @balance -= amount
      puts "New balance "
      displayBalance(@balance)
    sleep(2)
  end
end

def deposit(amount)
  puts "Starting Balance $#{@balance}.
  deposit amount $#{amount}."
  @balance += amount
  puts "New balance "
  displayBalance(@balance)
  sleep(2)
end

def displayBalance(balance)
  money = "%.2f" % (balance / 1.0)
  puts "$#{money} "

end

def New
  puts "please enter your name (case senstive)"
  name = gets.to_s
  ##check if name exists in file

  ##make a four digit pin
    #check pin format
    ##re enter pin

  ##add name and pin to file

end

def existing
  ##enter name
  ##enter pin

  ##check against file
  ##retrieve balance

end

#######MAIN CODE######

puts "Hi welcome to your ATM.
Are you a new or existing user?

1) New
2) existing

>Please enter 1 or 2"



loop do
  puts "
  Would you like to
  1) check your balance
  2) withdraw funds
  3) deposit funds
  4) Exit

  Please type 1,2,3 or 4"
  selection = gets.to_i
  #if !(1..4).include? selection

  if selection == 1
    puts ""
    puts "Your balance is "
    displayBalance(@balance)
    sleep(2)
  elsif selection == 2
    puts "ok, please enter an amount"
    amount = gets.to_f
    withdraw(amount)
  elsif selection == 3
    puts "ok, please enter an amount"
    amount = gets.to_f
    deposit(amount)
  elsif selection == 4
  puts "Exiting"
    exit
  else
    puts "Sorry, please enter a valid option."
    next
  end
end
