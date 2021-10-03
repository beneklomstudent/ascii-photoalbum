require 'mini_magick'                  
require 'rainbow'
require 'colormethod'

class ImageData
   attr_accessor :gettext, :downloadimage, :processimage, :arrayout
def initialize(gettext, downloadimage, processimage, arrayout)
@gettext = get.chomp
@downloadimage = MiniMagick::Image.open gettext
@processimage = magic_combine
@arrayout = turn_into_array
end 
end
# p "Please input file locations within the root folder"
# p ImageData.gettext
# p ImageData.downloadimage
# p ImageData.processsimage
# p ImageData.arrayout







  





# begin
    
# rescue => exception
#    "Error" 
# else
    
# end

# begin
    
# rescue => TypeError
#    "Image file" 
# else
    
# end


# class asciiimage
#    def initialize imagearray
#       @imagearray = imagearray
#    end
