# def begins_with_r(array)
#   array.each do |element|
#   if element.start_with?("r") == false
#     return false
#   else
#     return true
#     end
#  end
# end


def begins_with_r(array)
  array.each { |element| return false if element.start_with?("r") == false }
  true
end

def contain_a(array)
  element_array = []
  array.each do |element|
      if element.include?("a") == true
        element_array << element
      end
    end
    return element_array
  end

  def first_wa(array)
    array.each do |element|
      if element.to_s.start_with?("wa") == true
        return element
      end
    end
  end

def remove_non_strings(array)
  strings_array = []
  array.each do |element|
    if element.is_a?(String) == true
      strings_array << element
    end
    return strings_array
  end
end

# def remove_non_strings(array)
#   array.each {|element| array.delete element if element.is_a?(String) != true}
#   return array
# end

def count_elements(array)
  counts = Hash.new(0)
  array.each {|element| counts[element] +=1}
  count_array = []
  counts.each do |element, number|
    element.each {|key, value| count_array << {key=>value, :count=>number}}
      end
    return count_array
  end



def merge_data(keys, values)
  merged_data = []
  values.each do |hash|
    hash.each do |name, data|
      keys.each do |info|
        merged_data << info.merge(data) if info.values[0] == name
      end
    end
  end
  return merged_data
end

def find_cool(array)
  cool_array = []
  array.each do |element|
    element.each do |name, temp|
        if temp == "cool"
          cool_array << element
        return cool_array
        end
      end
    end
  end


def organize_schools(hash)
  locations_hash = {}
  hash.values.each {|location| locations_hash[location.values[0]] = []}
  hash.each {|school, location|locations_hash[location.values[0]] << school}
  return locations_hash
end
