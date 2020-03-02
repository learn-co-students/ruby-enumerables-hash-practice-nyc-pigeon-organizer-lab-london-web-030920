require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |key, value| 

value.each do |new_value, names|
  
  names.each do |name|
   if !pigeon_hash[name] 
     pigeon_hash[name] = {}
  end
 if !pigeon_hash[name][key]
   pigeon_hash[name][key] = []
end
pigeon_hash[name][key] << new_value.to_s

  end
  
end

end

  pigeon_hash


end




























# def nyc_pigeon_organizer(data)
#   pigeon_hash = {}
#   pigeon_names = []
#     pigeon_names.push(data[:gender][:male], data[:gender][:female])
#   names = pigeon_names.flatten
  
#   counter = 0
#     while counter < names.length do
#     pigeon_hash[names[counter]] =  {
#       :color => [],
#       :gender => [],
#       :lives => []
#       }

#       counter += 1
#         end
        
#   i = 0
# data[:color].each do |current_color, name_array| 
#       binding.pry
#       if name_array.include?(names[i])
#         pigeon_hash[names[i]][:color] << current_color.to_s
  
 
#       end
#   i += 1 
           
#     end 
# pigeon_hash
# binding.pry
# end

