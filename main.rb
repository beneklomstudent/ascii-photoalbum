require 'mini_magick'                  
require 'rainbow'
require 'yaml'
load 'colormethod.rb'
 
 
p "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
 
continue = true
while continue == true
    p "Would you like to create or load an image??"
    p "create"
    p "load"
    answer = menu_query
    if answer.include? "create" 
 
        puts "Loading image from file directory #{img}"
        pixels
        pixel_output
        puts "Would you like to save your image?"
        puts "yes/no"
        saveit = gets.chomp
        if saveit.include? 'yes'
            File.open("savesimages.yml", "w") { |file| file.write(pixels.to_yaml) } 
            puts "image array saved to savesimages.yml"
        elsif saveit.include? 'no'
            puts "Thanks for using Ascii Photolab!"
            continue = false
        end
    elsif answer.include? "load"
        pixels_array = YAML.load(File.read("savesimages.yml"))
        img = pixels_array
        pixel_output
    else
        puts "error reading input, please try again"
    end
end
 