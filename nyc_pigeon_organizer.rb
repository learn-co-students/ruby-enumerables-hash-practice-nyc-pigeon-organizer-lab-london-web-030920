require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  new_array = []
    data.each do |key, value|
      value.each do |color, name| 
        name.each do |names|
          if !new_hash[names] 
             new_hash[names] = {}
          end
          if !new_hash[names][key]
            new_hash[names][key] = []
          end
          new_hash[names][key].push(color.to_s)
        end
      end
  end
  new_hash
end
