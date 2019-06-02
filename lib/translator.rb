# require modules here
require "yaml"


def load_library(path)
  # code goes here
 emoticons = YAML.load_file(path)
 new_emoticons = {}
 new_emoticons['get_meaning'] = {}
 new_emoticons['get_emoticon'] = {}
 
  emoticons.each do |meaning, characters|
    new_emoticons['get_meaning'][characters[1]] = meaning
    new_emoticons['get_emoticon'][characters[0]] = characters[1]
  end
new_emoticons
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  load_library(path)
  translation =  new_emoticons['get_emoticon'][characters[1]] = characters[0]
  translation
end

def get_english_meaning
  # code goes here
end