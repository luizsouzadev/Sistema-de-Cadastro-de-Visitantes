json.extract! funcionario, :id, :nome, :cpf, :rg, :telefone, :setor_id, :cargo_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
