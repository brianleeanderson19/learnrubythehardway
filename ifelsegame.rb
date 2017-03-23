def start
  puts "You are on an expedition alone in the jungle."
  puts "You've already fought your way through snakes, quicksand, and cannibals."
  puts "You start to become exhausted.. but you see something."
  puts "It's a strange looking mayan temple. You go inside..."
  puts "Do you feel (excited / tired / scared)?"
  print "> "
  feeling = gets.chomp.downcase
  puts ''

  if feeling == "excited"
    puts "Well i'm glad! But things are about to get even more exciting. . . muahahahah"
    excited
  elsif feeling == "tired"
    puts "I can't blame you. Maybe you'll find somewhere in this temple to get some rest. . . "
    excited
  elsif feeling == "scared"
    puts "I'm sorry to hear that. I wish I could tell you that you have no reason to fear . . . "
    excited
  else
    dead("Incorrect answer.. a poison dart comes out of nowhere and you are dead")
  end
end


def excited
  puts "You continue and enter a room with two doors, one to the left and one to the right. Which door do you want to go through?"
  print "> "
  door = gets.chomp.downcase
  puts ''

  if door.include? "left"
    torture_chamber
  elsif door.include? "right"
    spiral_staircase
  else
    dead("That's not a valid choice. . You notice you are standing on a brick with a strange symbol on it. The ceiling collapses and you are dead.")
  end
end

def torture_chamber
  puts "You've found your way into. . . THE TORTURE CHAMBER!!!\n You look around the blood stained room and start to feel very uneasy. "
  puts "You're about to puke from the smell and look down on the floor. You notice a handle to a new door."
  puts "Do you open the door in the floor or head back the way you came?"
  print "> "
  choice2 = gets.chomp.downcase
  puts ''

  if choice2.include? "floor"
    underground
  elsif choice2.include? "back"
    excited
  else
    dead("You start to vomit and become dizzy from making an invalid choice. You stumble across the room and trip and land on a spear. You are dead.")
  end
end

def underground
  puts "You are feeling very ill, but open the door and head down some stairs."
  puts "It's very dark down here. You do find an unlit torch on the wall. Do you want to light it?"
  print "> "
  light = gets.chomp.downcase
  puts ''

  if light == "yes"
    puts "You've lit up the hallway you're standing in. There's a sleeping creature at the end of the hall."
    puts "Do you want to turn back? or see what the creature is blocking?"
    print "> "
    creature = gets.chomp.downcase
    puts ''

    if creature.include? "back"
      torture_chamber
    elsif creature.include? "blocking"
      puts "You sneak up to the creature. It's almost bear like.. but much larger. Blood stains the fur around its mouth.."
      puts "You haven't woken the beast, but you notice another door behind it. Do you want to try to sneak past? Or turn back to the torture chamber??"
        print "> "
        choice5 = gets.chomp.downcase
        puts ''

        if choice5.include? "sneak"
          dead("The light and heat from your torch has woken the beast! One chomp and your head is gone. Your body hits the floor. You are dead.")
        elsif choice5.include? "back"
          torture_chamber
        else
          puts "You better hurry and make a valid choice.."
        end
    else
      dead("You are feeling too sick and the lack of a valid choice leads you to die in a pile of your own vomit. You are dead.")
    end

  elsif light == "no"
    dead("Then the hallway is too dark for you to notice something was waiting for you at the end of the hall. You are dead.")
  else
    puts "IDK what that means. Either light the torch or don't"
  end
end 

def spiral_staircase
  puts "You've found a spiral staircase and start to climb . . "
  puts "You see many strange pictures on the walls. ."
  puts "You begin to feel very uneasy."
  puts "You arrive at the top of the stairs to find an old man in a robe carrying a sword."
  puts "He is saying nothing to you, but you notice a door behind him."
  puts "He is looking straight at you. What do you want to do? (fight / turn back / try to pass)"
  print "> "
  choice3 = gets.chomp.downcase
  puts ''

  if choice3 == "fight"
    dead("You didn't realize this old man was guarding something. . but it's too late. Your head falls to the floor. You are dead.")
  elsif choice3 == "turn back"
    puts "The old man lets you head back down the stairs . . "
    excited
  elsif choice3.include? "pass"
    gold_room
  else
    dead("Hurry and make a valid choice.. OOPS took too long and the old man became uneasy with your presence. His sword goes right through you with ease. You are dead.")
  end
end

def gold_room
  puts "The old man has let you pass. . you feel very creeped out, but the feeling soon fades because you are standing in a room full of treasure!"
  puts "From the floor to the ceiling there are jewels, gold, rubies and coins."
  puts "You realize the old man was guarding this room. Do you want to take any treasure?"
  print "> "
  choice4 = gets.chomp.downcase
  puts ''

  if choice4 == "yes"
    puts "How much would you like to take? (1..100)"
    print "> "
    howMuch = gets.chomp.to_i
    puts ''

    if howMuch <= 50
      puts "You've taken just enough and exit the treaure room. The old man doesn't notice you've taken anything. You exit the temple a very wealthy person. And YOU WIN!!"
      exit(0)
    elsif howMuch >= 51 && howMuch <= 100
      dead("You've loaded up as much as you can physically carry. As you exit the treasure room, the old man hears coins falling from your pockets. With one swift wave of his sword, your head hits the floor. You are dead.")
    else
      dead("I said pick between 1 and 100 you idiot.. in trying to take more than there even was.. the old man comes in knowing you were up to something and kills you with ease. You are dead.")
    end
  elsif choice4 == "no"
    puts "Then there's nothing left for you here. You head back from where you came to find the old man waiting for you. This time he's not so willing to let you pass. You're head hits the floor. You are dead."
  else
    puts "You have to pick yes or no"
  end
end

def dead(reason)
  puts reason, "To try again press the up arrow, then hit return. This time do better."
  exit(0)
end

start


