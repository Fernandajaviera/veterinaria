json.extract! pet_history, :id, :peso, :altura, :created_at, :updated_at
json.url pethistory_url(pet_history, format: :json)
