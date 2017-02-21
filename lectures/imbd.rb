class Person
# A person has...
  def initialize(name)
    @name = name
  end
  attr_accessor :name
end

class Actor < Person
  # A actor has...
  def initialize(name, acting_style)
    super(name)
    @acting_style = acting_style
  end
  attr_accessor :acting_style
end

class Director < Person
  def initialize(name, filmography)
    super(name)
  end
  def filmography
    # Some method that returns all the movies that is directed by this director.
  end
end

class Movie
  def initialize(title, description, actors, director)
    @title = title
    @description = description
    @actors = actors
    @director = director
  end

  attr_accessor :title, :description, :actors, :director

  def self.search_movie #could be any name after self.
     # create method which is at class level to put all movie objects into an array
    puts "Please enter a movie title"
    search_term = gets.chomp.downcase
    #loop through all movies and search any Movie object which includes the search term in the title
   ObjectSpace.each_object(self).to_a.each do |movie|
     if movie.title.downcase.include? search_term
       puts "Title: #{movie.title}\nDescription: #{movie.description}\nActors: #{movie.actors.name} \nDirector: #{movie.director.name}\n\n"

  end
end
end
end




# puts leo.name
# puts wallice.name

# puts "total movies in database: #{Movie.all.count}"
# puts Movie.all
# def self.search_movie
# puts "Please enter a movie title"
# search_term = gets.chomp.downcase
# # puts search_term
# ObjectSpace.each_object.each(self).to_a.each do |movie|
#
#
#   # if movie.title.downcase.include? search_term
#   #   puts "found #{movie.title}
#   #   "
#   #   puts "Actor: #{movie.actors.name}"
#   #   puts "Director: #{movie.director.name}"
#   #   puts "Description: #{movie.description}"
#   #
#   # end
# end



leo = Actor.new("Leo","Bad")
wallice = Director.new("wallice","superbad 4")
superbad3 = Movie.new("superbad3", "Bad MOvie", leo, wallice)
superbad4 = Movie.new("superbad4", "Bad MOvie", leo, wallice)

Movie.search_movie
