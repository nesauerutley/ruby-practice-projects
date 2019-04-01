def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    else
      nil
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      else
        nil
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        count = count+1
      else
        nil
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      else
        nil
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |contestant|
    age_array << contestant["age"].to_f
  end
    sum = age_array.reduce(:+)
    average = sum / age_array.count
    return average.round
  end
