class Movie < ApplicationRecord
    
    def ratingto(list)
         @li=list.rating
         if @li >= 7.to_s || @li <=10.to_s
              "Good"
         else 
               "Bad"
        end
    end
    
end
