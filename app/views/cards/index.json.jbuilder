json.array!(@cards) do |card|
  json.extract! card, :id, :name, :description, :catalog, :card_number, :strain_id, :rarity_id, :spawn_area_id, :shape_id, :max_level, :redeathable, :tradable, :extinct, :locked
  json.url card_url(card, format: :json)
end
