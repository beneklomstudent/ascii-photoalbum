
def loadimg(img)
    img = MiniMagick::Image.open (img)
    img.combine_options do |i|
        i.resize('64x32!')
        i.fill ('red')
        i.posterize ('2')
        i.fill ('green')
        i.posterize ('2')
        i.fill ('blue')
        i.posterize ('2')
    end
end
 
def save_name_prompt
    puts "Please enter filename to save to."
    name = gets.chomp
    if name.length >= 256 
        puts "Windows may not long filenames..."
    end
    name
end
 
def pixels(i)
    i.get_pixels 
end       
 
def menu_query
    gets.chomp
end

def pixel_output(p)
    p.each do |sub_arrayY|             # Iterate from top to bottom
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
 