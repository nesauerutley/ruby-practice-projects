def my_collect(collect)
  x = 0
  new_collect = []
  while x < collect.length do
    new_collect << yield(collect[x])
    x += 1
  end
  new_collect
end
