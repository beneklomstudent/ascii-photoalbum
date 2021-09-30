require 'rmagick'
include Magick                 
require 'rainbow'                       # Requires the Rmagick gem to be installed, as well as
colorsheet = Magick::Image.read("imagecolor.bmp").first
img = Magick::Image.read("image2.bmp").first
# colorsheet = ImageList.new 'imagecolor.bmp'                                        # imagemagick installed                                     
# img = ImageList.new 'image2.bmp'    #as a base filetype BMP is best because it does not require extra Magick delegates
img.remap(remap_image=colorsheet, dither=NoDitherMethod) 
img.resize(128,64)                      # resizes the image input
def pixelmath(x,y,z)
    x.push 

pixels = img.get_pixels(1,1,1,1)
puts pixels

# colorvalue = img.pixel_color(x, y, color)
# print img
# print rows
# print columns
# print x
# print y
# print color

# pixels = img.pixel_color(x, y, color)
# pixels.each do |sub_arrayY|             
#     sub_arrayY.each do |sub_arrayX|    
#         case sub_arrayX         
#         in [255, 0, 0]                 
#             print Rainbow("#").color(255, 0, 0)
#         in [0, 255, 0]                    
#             print Rainbow("%").color(0, 255, 0)
#         in  [0, 0, 255]              
#             print Rainbow("^").color(0, 0, 255)
#         else print ("?")    
#         end
#     end
#     print "\n"                          # Output a newline after every row
# end