require 'mini_magick'                  
require 'rainbow'
img = MiniMagick::Image.open 'image.bmp'
img.combine_options do |i|
    i.resize("64x32!")
    i.fill "red"
    i.posterize "2"
    i.fill "green"
    i.posterize "2"
    i.fill "blue"
    i.posterize "2"
pixels = img.get_pixels                 # Convert pixels to [R,G,B][X][Y] dimensional array
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|  # Iterate from left to right    
case sub_arrayX 
in [0..50,0..50,100..255]                      #  If 0-60, then output #
    print Rainbow("#").blue
in [100..255,0..50,0..50]                    #  If 61-140, then output =
    print Rainbow("=").red
in [0..50,100..255,0..50]
    print Rainbow(".").green
in [0..50, 0..50, 0..50]
    print Rainbow("4").black
in [255, 255, 255]
    print Rainbow("i").white
in [100..254, 100..254, 100..254]
    print Rainbow("%").black
in [100..255, 100..255, 0..50]
    print Rainbow("^").yellow
in [0..50, 100..255, 100..255]
    print Rainbow("@").darkblue
in [200..255, 0..50, 200..255]
    print Rainbow("6").pink
else print ("*")              

end
end
end
end