puts "what do you want to say?"
print "> "

input = gets.chomp

def playback(input)
  "You said: #{input}" 
end

puts playback(input)