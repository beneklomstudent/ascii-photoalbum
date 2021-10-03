require 'mini_magick'                   # Also need a Gemfile
require 'rainbow'
                                       # and imagemagick installed
img = MiniMagick::Image.open 'image2.bmp'
img.resize('128x64')
# img.remap(imagecolor.bmp, dither=NoDitherMethod)
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
        case sub_arrayX.sum/3           #  evaluate (R+G+B) divided by 3 
        in (0..5)                      #  If 0-60, then output #
            print Rainbow("#")
        in (6..10)                    #  If 61-140, then output =
            print Rainbow("=")
        in (11..15)                   #  If 141-230, then output .
            print Rainbow(".")
        in (16..20)                      #  If 230 or above, then 
           print Rainbow("*")
        in (21..25)
            print Rainbow("$").blue
        in (26..30)
            print Rainbow(";").purple
        in (31..35)
            print Rainbow("/").aqua
        in (36..40)
            print Rainbow(",").orange
        in (41..45)
            print Rainbow("[").green
        in (46..50)
            print Rainbow("]").yellow
        in (51..60)
            print Rainbow("0")
        in (61..65)
            print ("2")
        in (66..70)
            print ("/") 
        in (71..75)
            print ("^")   
        in (76..80)
            print Rainbow("&").black
        in (81..85)
            print Rainbow("@").blue  
        in (86..90)
            print Rainbow("4").green 
        in (91..95)
            print Rainbow("l").purple
        in (96..100)
            print Rainbow("'").aqua
        in (101..110)
            print Rainbow("o").black
        in (111..115)
            print Rainbow("y").aqua 
        in (116..120) 
            print Rainbow("t").black
        in (121..125)
            print Rainbow("r").red
        in (126..130)
            print Rainbow("3").black
        in (131..135)
            print Rainbow("|").indianred 
        in (136..140)
            print Rainbow("c").black
        in (141..145)
            print ("!")
        in (146..150)
            print Rainbow("5").green
        in (151..155)
            print ("7")
        in (156..160)
            print ("6")
        in (161..165)
            print Rainbow("-").yellow
        in (166..170)
            print Rainbow(">").yellow
        in (171..175)
            print ("<")
        in (176..180)
            print ("<")
        in (181..185)
            print ("9") 
        in (186..190)
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