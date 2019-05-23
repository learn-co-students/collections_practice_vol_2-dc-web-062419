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

def first_wa
  
  
  

end