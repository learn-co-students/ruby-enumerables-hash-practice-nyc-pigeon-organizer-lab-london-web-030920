pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
organized_hash = {}

data.each do |colour_gender_lives, pigeon_category|
  pigeon_category.each do |category, array|
    array.each do |pigeon_name|
     organized_hash[pigeon_name] = {:color => [], :gender => [], :lives => []}
   end
  end
end

keys = organized_hash.keys

data[:color].each do |pigeon_color, array|
 array.each do |pigeon_name|
   keys.each do |key|
     if pigeon_name === key
       organized_hash[key][:color] << pigeon_color.to_s
     end
   end
 end
end

data[:gender].each do |pigeon_gender, array|
 array.each do |pigeon_name|
   keys.each do |key|
     if pigeon_name === key
       organized_hash[key][:gender] << pigeon_gender.to_s
     end
   end
 end
end

data[:lives].each do |pigeon_lives, array|
 array.each do |pigeon_name|
   keys.each do |key|
     if pigeon_name === key
       organized_hash[key][:lives] << pigeon_lives.to_s
     end
   end
 end
end

organized_hash
end
