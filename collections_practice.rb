# your code goes here
def begins_with_r(array)
  array.all? {|x| x.start_with?("r")}
end

def contain_a(array)
a_array =[]
 array.each do |x|
  if x.include?("a")
    a_array << x
  end
end
  return a_array
end

def first_wa(array)
  wa_array = []
  array.map do |x|
  if x.to_s.start_with?("wa")
    wa_array << x
  end
end
return wa_array[0]
end
