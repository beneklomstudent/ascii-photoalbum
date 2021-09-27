require 'mini_magick'                   # Also need a Gemfile
                                        # and imagemagick installed
img = MiniMagick::Image.open 'image.jpg'
img.resize('128x64')
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
 
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
        case sub_arrayX.sum/3           #  evaluate (R+G+B) divided by 3 
        in (0..60)                      #  If 0-60, then output #
            print "#"
        in (61..140)                    #  If 61-140, then output =
            print "="
        in (141..230)                   #  If 141-230, then output .
            print "."
        in (230..)                      #  If 230 or above, then 
            print " "                   #   output a space
 
        end
    end
    print "\n"                          # Output a newline after every row
end