require 'mini_magick'                  
require 'rainbow'
require 'yaml'
load 'colormethod.rb'
p "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
p "Would you like to create or load an image??"
p "create"
p "load"

if menu_query.include? "create" 
puts "Loading image from file directory #{img}"
pixels 
pixel_output 
puts "Would you like to save your image?"
puts "yes/no"
saveit = gets.chomp
if saveit.include? 'yes'
File.open("savesimages.yml", "w") { |file| file.write(pixels.to_yaml) } 
print "image array saved to savesimages.yml"
if saveit.include? 'no'
    print "Thanks for using Ascii Photolab!"
end
if menu_query.include? 'no'
pixels_array = YAML.load(File.read("savesimages.yml"))
pixel_output
elseif puts "error reading input, please try again"
    end
end
end