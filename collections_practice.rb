# your code goes here
def begins_with_r(arr)
  r = []
  arr.each do |word|
   if word.start_with?('r')
     r.push(true)
   else
     r.push(false)
     end
    a = word.split("")
    if a[0] == "r"
     r.push(true)
   else
     r.push(false)
    end
  end
  r.all?
end


def contain_a(arr)
  a = []
    arr.each do |word|
       contain = word.split("")
             if  contain.include?("a")
                a.push(word)
        end
    end
    a
end


def first_wa(arr)
  wa = []
    arr.each do |word|
      if word.to_s.start_with?("wa") == true
        wa.push(word)
      end
    end
  wa[0]
end




def remove_non_strings(arr)
a = []
  arr.each do |element|
  #binding.pry
    if element.class == String
   #   binding.pry
      a.push(element)
    end
  end
  a
end




def count_elements(arr)
  
  
  
  
  
end





def merge_data
  
  
  


end







def find_cool
  



end





def find_cool
  
  
  
  
  
end





def organize_schools
  
  
  
  
  

end





