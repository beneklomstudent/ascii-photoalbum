require 'mini_magick'                   # Also need a Gemfile
require 'rainbow'
                                       # and imagemagick installed
img = MiniMagick::Image.open 'image2.bmp'
img.resize('128x64')
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
 
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
        case sub_arrayX.sum/3           #  evaluate (R+G+B) divided by 3 
        in (0..20)                      #  If 0-60, then output #
            print Rainbow("#")
        in (21..40)                    #  If 61-140, then output =
            print Rainbow("=")
        in (41..60)                   #  If 141-230, then output .
            print Rainbow(".")
        in (61..80)                      #  If 230 or above, then 
           print Rainbow("*")
        in (81..100)
            print Rainbow("$").blue
        in (101..120)
            print Rainbow("/").aqua
        in (121..140)
            print Rainbow(",").orange
        in (141..160)
            print Rainbow("[").green
        in (161..180)
            print Rainbow("]").yellow
        in (181..200)
            print Rainbow("0")
        in (201..)
            print (" ")                   #   output a space
      
        end
    end
    print "\n"                          # Output a newline after every row
end