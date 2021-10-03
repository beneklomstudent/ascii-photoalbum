

def black_and_white
pixels.each do |sub_arrayY|             
    sub_arrayY.each do |sub_arrayX|           
            case sub_arrayX.sum/3           #  evaluate (R+G+B) divided by 3 
            in (0..5)                      #  If 0-60, then output #
                print ("#")
            in (6..10)                    #  If 61-140, then output =
                print ("=")
            in (11..15)                   #  If 141-230, then output .
                print (".")
            in (16..20)                      #  If 230 or above, then 
               print ("*")
            in (21..25)
                print ("$")
            in (26..30)
                print (";")
            in (31..35)
                print ("/")
            in (36..40)
                print (",")
            in (41..45)
                print ("[")
            in (46..50)
                print ("]")
            in (51..60)
                print ("0")
            in (61..65)
                print ("2")
            in (66..70)
                print ("/") 
            in (71..75)
                print ("^")   
            in (76..80)
                print ("&")
            in (81..85)
                print ("@")
            in (86..90)
                print ("4") 
            in (91..95)
                print ("l")
            in (96..100)
                print ("'")
            in (101..110)
                print ("o")
            in (111..115)
                print ("y") 
            in (116..120) 
                print ("t")
            in (121..125)
                print ("r")
            in (126..130)
                print ("3")
            in (131..135)
                print ("|") 
            in (136..140)
                print ("c")
            in (141..145)
                print ("!")
            in (146..150)
                print ("5")
            in (151..155)
                print ("7")
            in (156..160)
                print ("6")
            in (161..165)
                print ("-")
            in (166..170)
                print (">")
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
                print (" ")   
        end
    end
    print "\n"                          # Output a newline after every row
end
end