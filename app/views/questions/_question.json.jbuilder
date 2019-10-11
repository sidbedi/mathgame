json.extract! question, :id, :operand1, :operand2, :operation, :correct, :created_at, :updated_at
json.url question_url(question, format: :json)
