class Progress
  def initialize(progress, total)
    #Progress = current progress
    #total = toal number data point to progress through
    @progress = progress
    @total = total
  end
  attr_accessor :progress, :total
end

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end


questions = []
File.open("questions.txt", "r") do |f|
  f.each_line do |line|
    questions << line.split(') ').last()
  end
end

numberOfQuestions = questions.count

progress1 = Progress.new(0,numberOfQuestions)
progressGraphic = 'Progress ['

# puts progress1.total

puts "
***********

Weclome, I will now ask some questions."


for question in questions
  progress1.progress += 1
  percentage = progress1.progress.percent_of(progress1.total)
  puts "

  Question #{progress1.progress} out of #{progress1.total} (#{percentage.round(2)}%)
  #{question} "
  answer = gets.chomp


end
