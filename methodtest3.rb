require 'mini_magick'                  
require 'rainbow'
img = MiniMagick::Image.open 'image2.bmp'
img.combine_options do |i|
    # i.colorspace "rgb"
    i.fill "red"
    i.posterize "2"
    i.fill "green"
    i.posterize "2"
    i.fill "blue"
    i.posterize "2"
    i.resize("64x32!")
end
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|  # Iterate from left to right    

case sub_arrayX                 #  evaluate (R+G+B)  
in [255, 255, 0]
print Rainbow("$").color(255, 255, 0)
in [31, 243, 31]
    print Rainbow("$").color(31, 243, 31)
in [255, 255, 255]
    print Rainbow("#").color(255, 255, 255)
in [255, 255, 254]
    print Rainbow("@").color(255, 255, 254)
in [255, 255, 253]
    print Rainbow("1").color(255, 255, 253)
in [254, 255, 255]
    print Rainbow("%").color(0, 55, 55)
in [253, 254, 0]
    print Rainbow("*").color(253, 254, 0)
in [0, 0, 0]
    print Rainbow(")").color(0, 0, 0)
in [252, 249, 249]
    print Rainbow("(").color(0, 1, 252)
in [250, 232, 232]
    print Rainbow("~").color(44, 0, 211)
in [154, 176, 22]
    print Rainbow("r").color(154, 176, 22)
in [0, 59, 40]
    print Rainbow("e").color(0, 59, 40)
in [92, 92, 92]
    print Rainbow("-").color(92, 92, 92)
in [4, 4, 4]
    print Rainbow("#").color(4, 4, 4)
in [255, 0, 0]
    print Rainbow("q").color(255, 0, 0)
in [0, 55, 55]
    print Rainbow("o").color(0, 55, 55)
in [251, 251, 251]
    print Rainbow("^").color(251, 251, 251)
in [255, 0, 0]
    print Rainbow("*").color(255, 0, 0)
in [227, 227, 0]
    print Rainbow("+").color(227, 227, 0)
in [0, 41, 59]
    print Rainbow("!").color(0, 41, 59)
in [251, 252, 1]
    print Rainbow("^").color(251, 252, 1)
in [0, 27, 157]
    print Rainbow(")").color(0, 27, 157)
in [7, 7, 0]
    print Rainbow("(").color(7, 7, 0)
in [4, 58, 54]
    print Rainbow("-").color(4, 58, 54)
in [0, 54, 58]
    print Rainbow("%").color(0, 54, 58)
    in [0, 0, 255]
        print Rainbow("e").color(0, 0, 255)  
    in [2, 0, 253]
        print Rainbow("q").color(2, 0, 253)    
    in [1, 1, 0]
        print Rainbow("t").color(1, 1, 0)
    in [250, 209, 208]
        print Rainbow("9").color(250, 209, 208)
    in [222, 182, 201]
        print Rainbow("f").color(222, 182, 201)
    in [156, 156, 241]
        print Rainbow("s").color(156, 156, 241)
    in [132, 132, 244]
        print Rainbow("e").color(132, 132, 244)
    in [112, 112, 244]
        print Rainbow("3").color(112, 112, 244)
    in [96, 96, 244]
        print Rainbow("9").color(96, 96, 244)
    in [85, 85, 244]
        print Rainbow("!").color(85, 85, 244)
    in [77, 77, 245]
        print Rainbow("(").color(77, 77, 245)
    in [72, 72, 245]
        print Rainbow("#").color(72, 72, 245) 
    in [74, 74, 245]
        print Rainbow("^").color(74, 74, 245)  
    in [82, 82, 244]
        print Rainbow("@").color(82, 82, 244) 
    in [92, 92, 245]
        print Rainbow(")").color(92, 92, 245)
    in [107, 107, 243]
        print Rainbow("h").color(107, 107, 243)
    in [126, 125, 243]
        print Rainbow("&").color(126, 125, 243)
    in [149, 148, 243]
        print Rainbow("c").color(149, 148, 243)
    in [175, 175, 237]
        print Rainbow("s").color(175, 175, 237)
    in [201, 201, 246]
        print Rainbow("[").color(201, 201, 246)
    in [226, 226, 249]
        print Rainbow("$").color(226, 226, 249)
    in [245, 245, 251]
        print Rainbow("w").color(245, 245, 251)
    in [252, 247, 247]
        print Rainbow("1").color(252, 247, 247)
    in [249, 216, 216]
        print Rainbow("%").color(249, 216, 216)
    in [246, 170, 170]
        print Rainbow("*").color(246, 170, 170)
    in [245, 119, 119]
        print Rainbow("#").color(245, 119, 119)
    in [246, 74, 74]
        print Rainbow("a").color(246, 74, 74)
    in [248, 41, 41]
        print Rainbow("5").color(248, 41, 41)
    in [253, 19, 17] 
        print Rainbow("3").color(253, 19, 17)
    in [213, 6, 30]
        print Rainbow("%").color(213, 6, 30)
    in [31, 0, 204]
        print Rainbow("!").color(31, 0, 204)
    in [0, 0, 244]
        print Rainbow("-").color(0, 0, 244)
    in [4, 4, 226]
        print Rainbow("y").color(4, 4, 226)
    in [14, 14, 250]
        print Rainbow("t").color(14, 14, 250)
    in [33, 33, 247]
        print Rainbow("4").color(33, 33, 247)
    in [63, 63, 245]
        print Rainbow("$").color(63, 63, 245)
    in [105, 105, 243]
        print Rainbow("&").color(105, 105, 243)
    in [155, 155, 244]
        print Rainbow(")").color(155, 155, 244)
    in [204, 204, 246]
        print Rainbow("*").color(204, 204, 246)
    in [240, 239, 250]
        print Rainbow(")").color(240, 239, 250)
    in [247, 203, 203]
        print Rainbow("%").color(247, 203, 203)
    in [244, 136, 136]
        print Rainbow("8").color(244, 136, 136)
    in [245, 70, 70]
        print Rainbow("^").color(245, 70, 70)
    in [249, 25, 25]
        print Rainbow("@").color(249, 25, 25)
    in [252, 3, 3]
        print Rainbow("&").color(252, 3, 3)
    in [254, 0, 0]
        print Rainbow("t").color(254, 0, 0)
    in [126, 0, 102]
        print Rainbow("&").color(126, 0, 102)
    in [0, 0, 252]
        print Rainbow("_").color(0, 0, 252)
    in [0, 0, 228]
        print Rainbow("*").color(0, 0, 228)
    in [0, 0, 245]
        print Rainbow("@").color(0, 0, 245)
    in [0, 0, 253]
        print Rainbow("j").color(0, 0, 253)
    in [17, 17, 249]
        print Rainbow("r").color(17, 17, 249)
    in [55, 54, 245]
        print Rainbow("#").color(55, 54, 245)
    in [115, 115, 242]
        print Rainbow("3").color(115, 115, 242)
    in [185, 185, 244]
        print Rainbow("-").color(185, 185, 244)
    in [237, 237, 249]
        print Rainbow("o").color(237, 237, 249)
    in [244, 160, 160]
        print Rainbow("5").color(244, 160, 160)
    in [245, 74, 74]
        print Rainbow("(").color(245, 74, 74)
    in [250, 18, 18]
        print Rainbow("^").color(250, 18, 18)
    in [0, 0, 229]
        print Rainbow("s").color(0, 0, 229)
    in [0, 0, 254]
        print Rainbow("u").color(0, 0, 254)
    in [253, 253, 253]
        print Rainbow("y").color(253, 253, 253)
    in [250, 245, 0]
        print Rainbow("$").color(250, 245, 0)
    in [9, 9, 250]
        print Rainbow("%").color(9, 9, 250)
    in [54, 54, 244]
        print Rainbow("6").color(54, 54, 244)
    in [134, 134, 241]
        print Rainbow("_").color(134, 134, 241)
    in [215, 215, 247]
        print Rainbow("&").color(215, 215, 247)
    in [237, 143, 143]
        print Rainbow("^").color(237, 143, 143)
    in [237, 48, 48]
        print Rainbow("&").color(237, 48, 48)
    in [251, 3, 3]
        print Rainbow("t").color(251, 3, 3)
        

    
    
    



else print ("?")
     end
    end
    print "\n"                          # Output a newline after every row
end




