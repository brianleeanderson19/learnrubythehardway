user_name = ARGV.first # gets the first argument
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts "Brian"
likes = @stdin.gets.chomp

puts "where do you live #{user_name}?"
puts "Vineyard"
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What ind of computer do you have? ", "Mac"
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} compputer. Nice.
"""


