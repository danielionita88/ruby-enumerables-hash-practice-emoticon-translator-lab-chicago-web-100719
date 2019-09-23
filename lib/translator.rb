# require modules here
require "yaml"
require 'pry'



def load_library(file)
  emoticons = YAML.load_file(file)
  list = {}
  emoticons.each do |meaning,emojis|
    if !list[:get_meaning]
      list[:get_meaning] = {emojis[1] => meaning}
    else list[:get_meaning][emojis[1]] = meaning
    end
    
    if !list[:get_emoticon]
    list[:get_emoticon] = {emojis[0] =>emojis[1]}
    else list[:get_emoticon][emojis[0]]=emojis[1]
    end
  end
  list
end




def get_japanese_emoticon(file,emoji)
  list = load_library(file)
  list.each do |meaning,emojis|
    if emojis[0] = emoji p emoji
    else p "this emoticon is not found"
  end
  
end

def get_english_meaning
  # code goes here
end







