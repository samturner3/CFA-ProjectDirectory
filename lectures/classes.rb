class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

person1 = Person.new("Sam", 23)

puts person1.name
puts person1.age
