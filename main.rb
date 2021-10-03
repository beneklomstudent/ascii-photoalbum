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
        filename = 'images/image.bmp'
        puts "Loading image from file directory #{filename}"
        image = loadimg(filename)
        px = pixels(image)
        pixel_output(px)
        puts "Would you like to save your image?"
        puts "yes/no"
        saveit = gets.chomp
        if saveit.include? 'yes'
            filename = save_name_prompt
            File.open(filename, "w") { |file| file.write(px.to_yaml) } 
            puts "image array saved to #{filename}"
        elsif saveit.include? 'no'
            puts "Thanks for using Ascii Photolab!"
            continue = false
        end
    elsif answer.include? "load"
 
        pixels_array = YAML.load(File.read("savesimages.yml"))
        img = pixels_array
        pixel_output(img)
    else
        puts "error reading input, please try again"
    end
end
 