# your code goes here
def begins_with_r (array)
  array.all? do |name|
     name[0] == "r"
  end
end

def contain_a (array)
  array.select do |word|
    word.include?("a")
  end
end 

def first_wa(array)
  array.find do |word|
    word[0,2] == 'wa'
  end
end 

def remove_non_strings(array)
  array.delete_if do |word|
    !word.is_a?(String)
  end 
end

def count_elements(arr)
  arr.uniq.each {|i| count = 0
        arr.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
  end

def merge_data(k,v)
    k.each do |name|
    v.each do |hash|
      name.merge!(hash[name[:first_name]])
    end
  end
end

def find_cool(array)
   array.select {|word| word.any? { |key, value|  value == ("cool")}}
end

def organize_schools(school)
  location = {}
   school.each do |skool, locations|
      locations.each do |info, loc|
        if location[loc] == nil
          location[loc] = [skool]
        else
          location[loc] << skool
        end
      end
    end
    location
  
end