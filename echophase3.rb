puts "What do you want to say?"
print "> " 
input = gets.chomp

def playback(input)
  if(input.downcase == 'nothing!')
    'Ok, fine!'
  elsif (input.downcase == "i have a lot to say")
    puts "ok, let's hear it!"
    lets_hear_it
  else
    "You said: #{input}" 
  end
end

def lets_hear_it
  array = []
  while true
    print "> " 
    phrase = gets.chomp
    if phrase != "done"
      array << phrase
    else 
      break
    end
  end
  format(array)
end

def format(array)
  index = 0
  array.map do |phrase| 
    if(index == 0)
     puts "You said: #{phrase}"
    elsif(index == array.length)
      puts "Finally you said: #{phrase}"
    else
      puts "Then, you said: #{phrase}"
    end
    index+=1
  end
  puts "Phew! Glad you got all #{index} of those things off your chest!"
end

puts playback(input)