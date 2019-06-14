# your code goes here
require "pry"
def begins_with_r(array)
    empty_array= []
    array.each do |word|
        if word[0] == "r"
            empty_array << "true"
        else 
            empty_array << "false"
        end
    end
    !empty_array.include?("false")
end

def contain_a(array)
    array.select {|element| element.include?("a")}
end

def first_wa(array)
array.find do |word|
    word [0..1] == "wa"
end
end

def remove_non_strings(array)
    new_array = []
    array.each do |element|
        if element == element.to_s
            new_array << element
        end
    end
    return new_array
end

def count_elements(array)
    array.group_by(&:itself).map do |key, value|
        key.merge({:count => value.length})

end
end

keys = 
    [
        {
            :first_name => "blake",
                 :motto => "Have a koala-ty day!"
        },
        {
            :first_name => "ashley",
                 :motto => "I dub thee, 'Lady Brett Ashley'."
        }
    ]
  

  data = 
    [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
  


def merge_data(keys, data)
    temp_hash = {}
merged_array = []
    data[0].each do |name, stats_hash|
            keys.each do |obj_hash|
                if name == obj_hash[:first_name]
                   temp_hash = stats_hash.merge(obj_hash)
                   merged_array << temp_hash
                
    end
end
end
return merged_array
end

def find_cool(array)
    new_array = []
    array.each do |obj_hash|
        if obj_hash[:temperature] == "cool"
            new_array << obj_hash
        end
    end
    return new_array
end


def organize_schools(schools_hash)
    new_hash = {}
    schools_hash.each do |school, location_hash|
        location = location_hash[:location]
        new_hash[location] = []
    end
    new_hash.each do |location, school_array|

    schools_hash.each do |school, location_hash|
        location_checker = location_hash[:location]
        if location == location_checker
            school_array << school
end
end
end
new_hash
end





