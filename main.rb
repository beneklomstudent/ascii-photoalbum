require 'mini_magick'                  
require 'rainbow'
load 'colormethod.rb'
load 'blackandwhitemethod.rb'
p "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
p "Would you like the image to be in color or black and white?"
p "color"
p "b/w"

if menu_query.include? "color" 
    puts "Loading image from file directory #{img}"
            pixels 
            pixel_output
    puts "would you like to export?"
        
elsif menu_query.include? "b/w"
    pixels
    black_and_white
    end
