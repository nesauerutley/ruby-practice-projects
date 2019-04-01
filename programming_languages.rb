def reformat_languages(languages)
  # your code here
  hash = {}
  hash[:ruby] = {type: "interpreted", style:[:oo]}
  hash[:javascript] = {type: "interpreted", style:[:oo, :functional]}
  hash[:python] = {type: "interpreted", style:[:oo]}
  hash[:java] = {type: "compiled", style:[:oo]}
  hash[:clojure] = {type: "compiled", style:[:functional]}
  hash[:erlang] = {type: "compiled", style:[:functional]}
  hash[:scala] = {type: "compiled", style:[:functional]}
  return hash
end
