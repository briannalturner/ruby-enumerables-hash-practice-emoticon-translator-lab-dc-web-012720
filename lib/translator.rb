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
  hash
end


def get_japanese_emoticon(file_path, emoticon)
  file = load_library(file_path)
  if file[:get_emoticon][emoticon]
    return file[:get_emoticon][emoticon]
  else
    return ""
  
end

get_japanese_emoticon("./lib/emoticons.yml", "=D")
def get_english_meaning
  # code goes here
end