def reverse_each_word(string)
  chunks = string.split(" ")
  array = []
  array << chunks
  array.each do |x|
    x.map(&:reverse!)
  end
  array.join(" ")
end

def reverse_each_word(string)
  chunks = string.split(" ")
  array = []
  array << chunks
  array.collect do |x|
    x.map(&:reverse!)
  end
  array.join(" ")
end
