require 'mini_magick'                  
require 'rainbow'
img = MiniMagick::Image.open 'image2.bmp'
img.remap('imagecolor.bmp')
img.resize("64x32!")
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|     # Iterate from left to right
        case sub_arrayX                 #  evaluate (R+G+B)  
        in [51, 0, 0]                 
            print Rainbow("#").color(51, 0, 0)
        in [51, 25, 0]                    
            print Rainbow("%").color(51, 25, 0)
        in  [51, 51, 0]              
            print Rainbow("^").color(25, 51, 0)
        in [25, 51, 0]
            print Rainbow("#").color(25, 51, 0)
        in [0, 51, 0]
            print Rainbow("$").color(0, 51, 0)
        in [0, 51, 51]
            print Rainbow("@").color(0, 51, 0)
        in [0, 25, 51]
            print Rainbow("^").color(0, 25, 51)
        in [0, 0, 51]
            print Rainbow("!").color(0, 0, 51)
        in [25, 0, 51]
            print Rainbow("i").color(25, 0, 51)
        in [51, 0, 51]
            print Rainbow(")").color(51, 0, 51)
        in [51, 0, 25]
            print Rainbow(")").color(51, 0, 25)
        in [0, 0, 0]
            print Rainbow("1").color(0, 0, 0)
        in [102, 0, 0]
            print Rainbow("#").color(102, 0, 0)
        in [102, 51, 0]
            print Rainbow("$").color(102, 51, 0)
        in [102, 102, 102]
            print Rainbow("&").color(102, 102, 102)
        in [51, 102, 0]
            print Rainbow("^").color(51, 102, 0)
        in [0, 102, 0]
            print Rainbow("u").color(0, 102, 0)
        in [0, 102, 51]
            print Rainbow("8").color(0, 102, 51)
        in [0, 102, 102]
            print Rainbow("#").color(0, 102, 102)
        in [0, 51, 102]
            print Rainbow("@").color(0, 51, 102)
        in [0, 0, 102]
            print Rainbow("3").color(0, 0, 102)
        in [51, 0, 102]
            print Rainbow("%").color(51, 0, 102)
        in [102, 0, 102]
            print Rainbow("#").color(102, 0, 102)
        in [102, 0, 51]
            print Rainbow("y").color(102, 0, 51)
        in [32, 32, 32]
            print Rainbow("*").color(32, 32 ,32)
        in [153, 0, 0]
            print Rainbow("g").color(153, 0, 0)
        in [153, 76, 0]
            print Rainbow("r").color(153, 76, 0)
        in [153, 153, 0]
            print Rainbow("o").color(153, 153, 0)
        in [76, 153, 0]
            print Rainbow("5").color(76, 153, 0)
        in [0, 153, 0]
            print Rainbow("-").color(0, 153, 0)
        in [0, 153, 76]
            print Rainbow("+").color(0, 153, 76)
        in [0, 153, 153]
            print Rainbow("%").color(0, 153, 153)
        in [0, 76, 153]
            print Rainbow("j").color(0, 76, 153)
        in [0, 0, 153]
            print Rainbow("5").color(0, 0, 153)
        in [76, 0, 153]
            print Rainbow("f").color(76, 0, 153)
        in [153, 0, 153]
            print Rainbow("#").color(153, 0, 154)
        in [153, 0, 76]
            print Rainbow("*").color(153, 0, 76)
        in [64, 64, 64]
            print Rainbow("!").color(64, 64, 64)
        in [204, 0, 0]
            print Rainbow("t").color(204, 0, 0)
        in [204, 102, 0]
            print Rainbow("=").color(204, 102, 0)
        in [204, 204, 0]
            print Rainbow("$").color(204, 204, 0)
        in [102, 204, 0]
            print Rainbow(")").color(102, 204, 0)
        in [0, 204, 0]
            print Rainbow("e").color(0, 204, 0)
        in [0, 204, 102]
            print Rainbow("d").color(0, 204, 102)
        in [0, 204, 204]
            print Rainbow("@").color(0, 204, 204)
        in [0, 102, 204]
            print Rainbow("8").color(0, 102, 204)
        in [0, 0, 204]
            print Rainbow("c").color(0, 0, 204)
        in [102, 0, 204]
            print Rainbow("n").color(102, 0, 204)
        in [204, 0, 204]
            print Rainbow("6").color(204, 0, 204)
        in [204, 0, 102]
            print Rainbow("%").color(204, 0, 102)
        in [96, 96, 96]
            print Rainbow("-").color(96, 96, 96)
        in [255, 0, 0]
            print Rainbow("0").color(255, 0, 0)
        in [255, 182, 0]
            print Rainbow("f").color(255, 182, 0)
        in [255, 255, 0]
            print ("2").color(255, 255, 0)
        in [128, 255, 0]
            print ("^").color(128, 255, 0)
        
        else print ("?")
        end
    end
    print "\n"                          # Output a newline after every row
end