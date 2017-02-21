class ATM
    def initialize(capacity, balance)
      @capacity = capacity
      @balance = balance
      @passWord = '1234'
    end

    attr_accessor :capacity, :balance, :passWord
end

class Person
  def initialize(balance)
    @balance = balance
  end

  attr_accessor :balance
end

atm1 = ATM.new(1000, 900)
person1 = Person.new(500)

atm2 = ATM.new(1000, 900)
person2 = Person.new(500)

#######FUNCTIONS######
def withdraw(person, atm, amount)
  puts "Starting Balance "
  displayBalance(person)
  puts "
  withdraw amount = $#{amount}."

  if amount > person.balance
        puts "Not enough funds
        "
        sleep(2)
  elsif amount > atm.balance
    puts "Sorry, not enough money inside ATM"
    sleep(2)
  else
    person.balance -= amount
    atm.balance -= amount
    puts "New balance "
    displayBalance(person)
    sleep(2)
  end
end

def deposit(person, atm, amount)
  puts "Starting Balance $#{person.balance}.
  deposit amount $#{amount}."
  if amount > (atm.capacity - atm.balance)
    puts "Sorry, Not enough space in ATM to deposit that amount."
    sleep(2)
  elsif
    person.balance += amount
    atm.balance += amount
    puts "New balance "
    displayBalance(person)
    sleep(2)
  end
end

def displayBalance(person)
  balance = person.balance
  money = "%.2f" % (balance / 1.0)
  puts "$#{money} "

end

def authenticate(pin, atm)
  pin == atm.passWord
end

def adminMenu(atm)
  puts "
************************

  ATM Balance: #{atm.balance}
  ATM capacity: #{atm.capacity}

************************"

  sleep(2)
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

puts "Hi welcome to your ATM."
loop do
  puts "
  Would you like to
  1) check your balance
  2) withdraw funds
  3) deposit funds
  4) Exit
  5) ATM Admin

  Please type 1,2,3,4 or 5"
  selection = gets.to_i
  #if !(1..4).include? selection

  if selection == 1
    puts ""
    puts "Your balance is "
    displayBalance(person1)
    sleep(2)
  elsif selection == 2
    puts "ok, please enter an amount"
    amount = gets.to_f
    withdraw(person1, atm1, amount)
  elsif selection == 3
    puts "ok, please enter an amount"
    amount = gets.to_f
    deposit(person1, atm1, amount)
  elsif selection == 4
    puts "Exiting"
    exit
  elsif selection == 5
    puts "
    Please enter admin PIN:"
    pass = gets.chomp
    if authenticate(pass, atm1)
      adminMenu(atm1)
    else
      puts "Wrong PIN"
      sleep(2)
    end
  else
    puts "Sorry, please enter a valid option."
    next
  end
end
