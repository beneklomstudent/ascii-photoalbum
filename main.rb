require 'mini_magick'                  
require 'rainbow'
require 'yaml'
load 'colormethod.rb'
load 'blackandwhitemethod.rb'
p "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
p "Would you like to create or load an image??"
p "create"
p "load"

if menu_query.include? "create" 
    puts "Loading image from file directory #{img}"
            pixels 
            pixel_output  
elsif menu_query.include? "load"
    img = YAML.load(File.read("savesimages.yml"))
    pixels
    pixel output
else puts "error reading input, please try again"
    end
puts "Would you like to save your image?"
saveit = gets.chomp
if saveit.include? 'yes'
File.open("savesimages.yml", "w") { |file| file.write(img.to_yaml) }
else return
end