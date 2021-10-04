require 'mini_magick'                  
require 'rainbow'                   #Color values can be within the range of 0-255
                 #this test checks the created array against that, if a value goes
img = MiniMagick::Image.open ('images/image.bmp')
    img.combine_options do |i|
        i.resize('64x32!')
        i.fill ('red')
        i.posterize ('2')
        i.fill ('green')
        i.posterize ('2')
        i.fill ('blue')
        i.posterize ('2')     
                                 #over said amount it returns a message
         def pixels(i)
        i.get_pixels 
        end       
pixels.each do |sub_arrayY|            
    sub_arrayY.each do |sub_arrayX|  
case sub_arrayX 
in [256..,256..,256..]                     
    puts "color value can not exceed a 255 value, this is incorrect"
else return                             #if no error is found code is stopped
end

end
end
end