 def dictionary
   dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(argument)
  argument_array = argument.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  argument_array.join(" ")
end

def bulk_tweet_shortener(argument_array)
  argument_array.each do |argument|
    puts word_substituter(argument)
  end
end

def selective_tweet_shortener(argument)
    if argument.length > 140
       word_substituter(argument)
     else argument
     end
end

def shortened_tweet_truncator(argument)
  if argument.length > 140
    word_substituter(argument)
    argument.slice!(0, 140)
  else
    argument
  end
end
