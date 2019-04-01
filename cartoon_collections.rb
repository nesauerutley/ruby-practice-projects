def roll_call_dwarves(names_array)# code an argument here
  # Your code here
  for i in 1..names_array.length do
  names_array.each_with_index {|name, number| puts "#{number.to_i+1}.*#{name}"}
  end
end

def summon_captain_planet(names_array)# code an argument here
  # Your code here
    names_array.collect {|name| name << "!" && name[0] = name[0].upcase}
    names_array
  end

def long_planeteer_calls(calls_array)# code an argument here
  calls_array.delete_if {|call| call.length < 4}
     if calls_array.length > 2
      true
    else
      false
   end
end


def find_the_cheese(strings_array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  first_cheese = (strings_array & cheese_types)
 if first_cheese.empty? == true
   nil
 else
   first_cheese.first
 end
end
