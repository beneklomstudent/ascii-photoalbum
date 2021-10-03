require 'mini_magick'                  
require 'rainbow'
require 'yaml'
load 'colormethod.rb'
load 'blackandwhitemethod.rb'
p "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
p "Would you like the image to be in color or greyscale?"
p "color"
p "greyscale"

if menu_query.include? "color" 
    puts "Loading image from file directory #{img}"
            pixels 
            pixel_output  
elsif menu_query.include? "greyscale"
    pixels
    black_and_white
else puts "error reading input, please try again"
    end
puts "Would you like to save your image?"
saveit = gets.chomp
if saveit.include? 'yes'
File.open("savesimages.yml", "w") { |file| file.write(img.to_yaml) }
else return
end