#forgot to branch- phase_4 branch

puts "What do you want to say?"
print "> "

input = gets.chomp
puts "You said #{input}"



def most_freq(input)
  check = input.split(//)
  counts = {}
  check.each do |char|
  if char != ' '
    unless counts.has_key?(char)
      counts[char]= 0
    end
      counts[char] += 1
  end
end
  sorted = counts.sort_by{|key, value| value}
  puts sorted.inspect
  puts "'#{sorted[-2][0]}' is the second most used character"
  puts "'#{sorted[-2][0]}' was used a total of #{sorted[-2][1]} times."
end

most_freq(input)