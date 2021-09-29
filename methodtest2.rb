require 'RMagick'
include Magick                 # Also need a Gemfile
require 'rainbow'                       # and imagemagick installed
                                       
img = ImageList.new 'imagecolor.bmp'
img.resize(128,64)    
img.bilevel_channel(0 [])

pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
 
pixels.each do |sub_arrayY|             
    sub_arrayY.each do |sub_arrayX|    
        case sub_arrayX         
        in (255, 0, 0)                 
            print Rainbow("1").color(255, 0, 0)
        in (0, 255, 0)                    
            print Rainbow("2").color(0, 255, 0)
        in  (0, 0, 255)              
            print Rainbow("3").color(0, 0, 255)
        else print ("?")    
        end
    end
    print "\n"                          # Output a newline after every row
end