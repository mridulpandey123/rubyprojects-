area_codes={"delhi"=>"12223","up"=>"4332","mp"=>"2343","goa"=>"8623","uk"=>"45234","us"=>"3463","un"=>"6833"}

def get_city_names(somehash)
  puts(somehash.keys)
end

def get_area_code(somehash,key)
  puts(somehash[key])
end

loop do
  puts"Do you want to lookup area code based on city name? (Y/N)"
  input=gets.chomp.downcase
  break if input!="y"
  get_city_names(area_codes)
  puts"enter your selection"  
  city=gets.chomp.downcase
  get_area_code(area_codes,city)
end
