json.extract! gasto, :id, :titulo, :valor, :data, :categoria, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
