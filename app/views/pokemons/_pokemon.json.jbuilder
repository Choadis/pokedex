json.extract! pokemon, :id, :name, :type1, :type2, :ability_1, :ability_2, :hidden_ability, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
