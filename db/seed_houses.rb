require('pry')

require_relative('../models/house')

house1 = House.new({
  "name" => "Ravenclaw",
  "logo_url" => "https://www.thestoreofrequirement.com.au/assets/full/2069.jpg"
  })

house2 = House.new({
  "name" => "Gryffindor",
  "logo_url" => "https://www.thestoreofrequirement.com.au/assets/full/2070.jpg"
  })

house1.save
house2.save

binding.pry
nil
