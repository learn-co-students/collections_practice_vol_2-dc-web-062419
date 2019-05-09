require 'pry'
# Return true if every element of the tools array starts with an "r" and false otherwise.
def begins_with_r(array)
  array.all? {|i| i[0]=="r"}
end

# return all elements that contain the letter 'a'
def contain_a(array)
  array.select {|i| i.include?("a")}
end

# Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.detect {|i| i[0..1] == "wa"}
end

# remove anything that's not a string from an array
def remove_non_strings(array)
  array.select {|i| i.to_s === i}
end

#count how many times something appears in an array
def count_elements(array)
  ans = []
  array.uniq.each do |i|
    ans.push([i,count:array.count(i)].reduce({}, :merge))
  end
  ans
end

# combines two nested data structures into one
def merge_data(keys,data)
  ans = []
  keys.each do |k|
    data.first.each do |n,d|
      if k[:first_name]==n
        ans.push(k.merge(d))
      end
    end
  end
  ans
end

# find all cool hashes
def find_cool(data)
  cool = []
  data.each do |person|
    if person[:temperature] == "cool"
      cool << person
    end
  end
  cool
end

# organizes the schools by location
def organize_schools(data)
  organized = {}
  data.collect {|k,v| organized[v[:location]] = []}
  organized.each do |location,empty_array|
    data.each do |school,location_hash|
      if location_hash[:location] == location
        empty_array << school
      end
    end
  end
  organized
end
