puts "What do you want to say?"
print "> " 
input = gets.chomp

def playback(input)
  if (input.downcase == 'i have something prepared')
    prepared
  elsif(input.downcase == 'nothing!')
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

def prepared
  puts "Ok, where can I find what you want to say?"
  print ">"
  path = gets.chomp
  check_path(path)
end

def check_path(path)
  if !File.exist?(path)
    puts "I couldn't find that file."
  else
    read_file(path)
  end
end

def read_file(path)
  array = []
  File.open(path, 'r').each_line do |line|
    array << line
  end
  format(array)
end

puts playback(input)