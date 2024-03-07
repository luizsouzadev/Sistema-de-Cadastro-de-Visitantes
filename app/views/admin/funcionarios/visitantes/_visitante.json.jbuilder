json.extract! visitante, :id, :nome, :cpf, :rg, :telefone, :foto, :created_at, :updated_at
json.url visitante_url(visitante, format: :json)
