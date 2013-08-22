puts "what do you want to say?"
print "> "

input = gets.chomp

def playback(input)
  if(input.downcase == 'nothing!')
    'Ok, fine!'
  elsif (input.downcase == 'i have a lot to say')
    "I don't have time for that right now!"
  else
    "You said: #{input}" 
  end
end

puts playback(input)