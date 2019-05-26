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
   arr.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    arr.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq

 end



# require 'pry'

# def merge_data(keys, data)
  
#   keys.map do |key|
#     key.map do |
#   	binding.pry	

#   data.map do |key2, value2|

#   	binding.pry
#   end
#   end
# end







def find_cool()
  
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container


end





def find_cool
  
  
  
  
  
end




require'pry'
def organize_schools(arr)
  
  org_arr = {}
  
  arr.map do |name, location|

  		location.map do |key, city|
        #binding.pry
  			org_arr[city] ||= [name]
         # binding.pry
  			if arr[name][key] == city
  				org_arr[city] << name
     # binding.pry
      # else
        
      #   org_arr[city] = 
  			end

  		end
#binding.pry
  end
  
  org_arr  

end





