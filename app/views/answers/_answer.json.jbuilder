json.extract! answer, :id, :user_id, :operand1, :operation, :operand2, :correct, :seconds, :created_at, :updated_at
json.url answer_url(answer, format: :json)
