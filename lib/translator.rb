require 'yaml'

def load_library(file_path)
  file = YAML.load_file(file_path)
  # p file
  hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  file.each { |key, value|
    hash[:get_meaning][value[1]] = key
    hash[:get_emoticon][value[0]] = value[1]
  }
  pp hash
  hash
end

load_library('lib/emoticons.yml')

def get_japanese_emoticon(file_path, emoticon)
  
  # code goes here
end

def get_english_meaning
  # code goes here
end