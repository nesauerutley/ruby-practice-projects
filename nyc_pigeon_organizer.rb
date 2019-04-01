def nyc_pigeon_organizer(data)
  # write your code here!
pigeon_hash = {}
data.each do |traits, values|
  values.each do |value, array|
    array.each do |name|
      if !pigeon_hash.has_key?(name)
        pigeon_hash[name] = {}
      end

      if !pigeon_hash[name].has_key?(traits)
        pigeon_hash[name][traits] = []
      end

      pigeon_hash[name][traits].include? (value)
        pigeon_hash[name][traits] << value.to_s
      end
    end
  end
pigeon_hash
end
