def img
img = MiniMagick::Image.open ("images/image.bmp")
img.resize('64x32!')
img.fill ('red')
img.posterize ('2')
img.fill ('green')
img.posterize ('2')
img.fill ('blue')
img.posterize ('2')
end

def save_name
save_name = gets.chomp
end

def pixels
pixels = img.get_pixels 
end       
def menu_query
menu_query = gets.chomp
end
def menu_query2
menu_query2 = gets.chomp
end
def pixel_output
pixels.each do |sub_arrayY|             # Iterate from top to bottom
    sub_arrayY.each do |sub_arrayX|  # Iterate from left to right    
case sub_arrayX 
in [0..50,0..50,100..255]                     
    print Rainbow("#").blue
in [100..255,0..50,0..50]                    #
    print Rainbow("=").red
in [0..50,100..255,0..50]
    print Rainbow(".").green
in [0..50, 0..50, 0..50]
    print Rainbow("4").black
in [255, 255, 255]
    print Rainbow("i").white
in [100..254, 100..254, 100..254]
    print Rainbow("%").black
in [200..255, 124..255, 0..50]
    print Rainbow("^").yellow
in [0..50, 100..255, 100..255]
    print Rainbow("@").darkblue
in [200..255, 0..50, 200..255]
    print Rainbow("6").pink
in [100..255, 100..178, 0..50]
    print Rainbow("#").orange
else print ("*")                  #   output a space

end
end
print "\n"                  

end
end