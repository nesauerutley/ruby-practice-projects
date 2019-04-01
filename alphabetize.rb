def alphabetize(arr)
  # code here
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_array = esperanto_alphabet.split("")
  arr.sort_by do |string|
    string.split("").map do |letter|
      esperanto_array.index(letter)
    end
  end
end
