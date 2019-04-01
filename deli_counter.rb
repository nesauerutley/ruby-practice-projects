def line(people)
  if people.empty? == true
    puts "The line is currently empty."
else
    in_line = ""
    for number in (0...people.length) do
    in_line << " #{number.to_i+1}. #{people[number]}"
  end
  puts "The line is currently:#{in_line}"
  end
end

def take_a_number(in_line, new_person)
  in_line << new_person
  puts "Welcome, #{new_person}. You are number #{in_line.count} in line."
end

def now_serving(in_line)
  if in_line.empty? == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{in_line.first}."
    in_line.shift(0)
    other_deli << in_line
  end
end
