def gold_room
  puts "This room is full of gold. How much do you take? ('1...100')"

  print "> "
  choice = gets.chomp.to_i

  if choice <= 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  elsif choice >= 51 && choice <= 100
    dead("You greedy bastard! The weight of all that gold slowed you down and the bear AND cthulhu caught up to you and tore you limb from limb!!! HEHEHEHEHEHEHEEHEHEEEEEEE!!!!!!!!")
  else
    dead("I said enter a number between 1 and 100. Your stupidity kills you this time.")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey"
  puts "The bear is also blocking another door."
  puts "How are you going to move the fat bear? (take honey / taunt bear)"
  bear_moved = false

  while true
    print "> "
    choice = gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now. (open door)"
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I have no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job! (press up arrow and hit enter to try again)"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you choose?"

  print "> "
  choice = gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else 
    dead("You stumble around the room until you starve.")
  end 
end

start