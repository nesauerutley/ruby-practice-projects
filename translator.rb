# require modules here
require 'yaml'
path = '/Users/markutley/Development/naomi-code/emoticon-translator-prework/lib/emoticons.yml
'
def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}

  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}

  emoticons.each do |meaning, emoticons|
    new_hash["get_emoticon"][emoticons.first] = emoticons.last
    new_hash["get_meaning"][emoticons.last] = meaning
    end
    return new_hash
  end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  japanese_emoticon = emoticons["get_emoticon"][emoticon]
  if japanese_emoticon == nil
    return "Sorry, that emoticon was not found"
  end
  return japanese_emoticon
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  english_meaning = emoticons["get_meaning"][emoticon]
  if english_meaning == nil
    return "Sorry, that emoticon was not found"
  end
  return english_meaning
end
