# require modules here
require "yaml"


def load_library(path)
  # code goes here
 emoticons = YAML.load_file(path)
 new_emoticons = {}
 new_emoticons['get_meaning'] = {}
 new_emoticons['get_emoticon'] = {}
 
  emoticons.each do |meaning, characters|
    new_emoticons['get_emoticon'][characters[0]] = characters[1]
    new_emoticons['get_meaning'][characters[1]] = meaning
  end
new_emoticons
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  translation_result = nil 
  translation_hash = load_library(path)
  if translation_hash.include?(emoticon) 
    translation_hash = translation_hash['get_emoticon'][emoticon]
  else
    return "Sorry, that is not a know emoticon"
  end
 translation_result
end

def get_english_meaning
  # code goes here
end