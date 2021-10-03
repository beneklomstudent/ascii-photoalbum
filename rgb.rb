require 'mini_magick'                  
require 'rainbow'
img = MiniMagick::Image.open 'image2.bmp'
img.remap('RGB.bmp')
img.resize("64x32!")
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
      
        case sub_arrayX           #  evaluate (R+G+B)  
       
        in [0, 0, 255]                 
            print Rainbow("#").color(0, 0, 255)
        in [0, 255, 0]                    
            print Rainbow("%").color(0, 255, 0)
        in  [255, 0, 0]              
            print Rainbow("^").color(255, 0, 0)
        in [0, 0, 0]
            print Rainbow("E").color(0, 0, 0)
        else print ("?")
        end
    end
    print "\n"                          # Output a newline after every row
end