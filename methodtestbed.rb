require 'mini_magick'                   # Also need a Gemfile
require 'rainbow'
                                       # and imagemagick installed
img = MiniMagick::Image.open 'image2.bmp'
img.resize('128x64')
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
 
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
        case sub_arrayX.sum/3           #  evaluate (R+G+B) divided by 3 
        in (0..5)                      #  If , then output #
            print Rainbow("#")
        in (6..10)                    
            print Rainbow("=")
       in (11..15)                   #  If 141-230, then output .
            print Rainbow(".")
        in (16)
            print Rainbow("u").black
        in (17..20)                      
           print Rainbow("*").purple
        in (21)
            print Rainbow("$").blue
        in (22..24)
            print Rainbow(";").green
        in (25..27)
            print Rainbow("/").aqua
        in (28..30)
            print Rainbow(",").green
        in (31..33)
            print Rainbow("[").aqua
        in (34..37)
            print Rainbow("]").green
        in (38..39)
            print Rainbow("0").aqua
        in (40..44)
            print Rainbow("2").green
        in (45)
            print Rainbow("/").blue 
        in (46..51)
            print Rainbow("^").blue   
        in (52)
            print Rainbow("&").red
        in (53..57)
            print Rainbow("@").magenta  
        in (58..61)
            print Rainbow("4").green 
        in (62..63)
            print Rainbow("l").purple
        in (64..67)
            print Rainbow("'").green
        in (68..69)
            print Rainbow("o").aqua
        in (70..74)
            print Rainbow("y").green 
        in (75) 
            print Rainbow("t").blue
        in (76..80)
            print Rainbow("r").green
        in (81)
            print Rainbow("3").aqua
        in (82..87)
            print Rainbow("|").green 
        in (88)
            print Rainbow("c").red
        in (89..99)
            print Rainbow("!").magenta
        in (100..104)
            print Rainbow("5").green
        in (105)
            print Rainbow("7").aqua
        in (106..111)
            print Rainbow("6").green
        in (112..115)
            print Rainbow("-").green
        in (116..117)
            print Rainbow(">").aqua
        in (118..123)
            print Rainbow("<").green
        in (124..126)
            print Rainbow("<").red
        in (127..129)
            print Rainbow("9").purple 
        in (130..190)
            print ("e")   
        in (191..195)
            print ("c")
        in (196..200)
            print "v"                                             
        in (201..)
            print (" ")                   #   output a space
      
        end
    end
    print "\n"                          # Output a newline after every row
end