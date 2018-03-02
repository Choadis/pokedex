json.extract! pokemon, :id, :name, :type1, :type2, :ability1, :ability2, :hidden_ability, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
