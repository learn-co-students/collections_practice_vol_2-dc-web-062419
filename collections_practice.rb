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
	arr.each do |element|
		element[:count] = 0
		cur = element[:name]
	arr.each do |element2|
			if element2[:name] == cur
				element[:count] += 1
			end
	end
	end.uniq
end

# #require 'pry'
# def count_elements(arr)	
	
# 	arr.map do |element|
# 	  #binding.pry
# 	  cur = element
# 	 # binding.pry
# 		element[:count] = 0
# 	#binding.pry
# 		cur = element[:name]
# 	#binding.pry
# 	arr.map do |element2|
# 		#	binding.pry
# 			if element2[:name] == cur
# 		#		binding.pry
# 				element[:count] += 1
# 		#	binding.pry
# 			end
# 	end
# 	end.uniq
# #rr
# end




def merge_data(a, b)
  
merged = []
  a.map do |a_hash|

  	a_hash.map do |keys, values|

  		b.map do |b_hash|

  			b_hash.map do |bkey, bkeyhash|
  					if bkey == values

  						merged << a_hash.merge(bkeyhash)
  					end

  			end
  		end	
  	end

  end
  merged
end













def find_cool(cool)
  
        	results = []
	cool.map do |hashes|

		hashes.map do |name, temperature|

			if hashes[name] == "cool"

				results << hashes
		end
	end
end
results
end









def organize_schools(arr)
  
  org_arr = {}
  
  arr.map do |name, location|

  		location.map do |key, city|
  			org_arr[city] ||= []
         
  			  if arr[name][key] == city
  				org_arr[city] << name

  			end
  		end
  		end
  		org_arr
end






