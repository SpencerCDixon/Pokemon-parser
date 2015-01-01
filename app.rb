require 'pokegem'
require 'pry'
require 'net/http'


hoenn_pokemon = []
(252..386).to_a.each do |num|
  pokemon = JSON.parse(Pokegem.get 'pokemon', num)
  name = pokemon['descriptions'].first['name']
  ev = pokemon['ev_yield']
  hoenn_pokemon << [name, ev]
end

puts hoenn_pokemon
