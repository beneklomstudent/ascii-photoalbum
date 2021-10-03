require 'mini_magick'                  
require 'rainbow'                   #Color values can be within the range of 0-255
load 'colormethod.rb'                 #this test checks the created array against that, if a value goes
img                                 #over said amount it returns a message
pixels
pixels.each do |sub_arrayY|            
    sub_arrayY.each do |sub_arrayX|  
case sub_arrayX 
in [256..,256..,256..]                     
    puts "color value can not exceed a 255 value, this is incorrect"
else return                             #if no error is found code is stopped
end

end
end