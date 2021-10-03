require 'mini_magick'                  
require 'rainbow'
load 'colormethod.rb'
print "Welcome to the Ascii Photolab, with this application you can
create ascii art from your own images!"
print "Would you like to load an existing ascii save, or create a new one?"
print "load"
print "create"
menu_query
if menu_query.include? "create" 
    print "Loading image from file directory #{img}"
    print "Would you like to save this image for later? #{menu_query2}"
    if menu_query2.include? "yes" 
    print "please input a savename #{save_name}"
      imageblob = pixels.to_blob
      imageblob.Marshal.dump(save_name)
else menu_query.include? "load"
    print "Placeholder"
elseif 
print "input not recognized, please try again"
print "#{menu_query}"

pixel_output
 







  





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
