# your code goes here

def begins_with_r(array)
    array.all? {|x| x.start_with?("r")}
end
   
def contain_a(array)
    new_array = []
    array.each do |x|
        if x.include?("a")
            new_array << x
        end
    end
    return new_array
end

def first_wa(array)
    new_array = []
    array.map do |x|
        if x.to_s.start_with?("wa")
            new_array << x
        end
    end
    return new_array[0]

end

def remove_non_strings(array)
    array.delete_if {|x| !(x.is_a? String)}
end

def count_elements(array)
    counts = Hash.new(0)
    array.collect {|element| counts[element]+=1 }
      counts.collect do |hash, number|
        hash[:count] = number
      end
    counts.keys
  end



  def merge_data(keys, data)
    array = []
    data.each do |my_hash| 
      my_hash.each do |name, value| 
        keys.each do |key_name| 
          if key_name.values[0] == name 
            array << key_name.merge(value)
          end
        end
      end
    end
    array
  end

  def find_cool(cool)
    cool.select {|data| data[:temperature] == "cool"}


  end
  

  def organize_schools(schools)
    organize_schools = {}
    schools.each do |school_name, place|
      place.each do |location, city|
        if organize_schools.has_key?(city)
          organize_schools[city] << school_name
        else
          organize_schools[city] = [school_name]
        end
      end
    end
    organize_schools
  end