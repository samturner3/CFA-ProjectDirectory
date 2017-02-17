require 'paint'
require 'terminal-table'

puts "Non-Painted Output"
puts Paint['Ruby', :red]

painted = Paint['Ruby', :red]

rows = []
rows << [painted, 1]
rows << ['Two', 2]
rows << ['Three', 3]
table = Terminal::Table.new :rows => rows

puts table
