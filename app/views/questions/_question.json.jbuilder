json.extract! question, :id, :title, :category, :difficulty, :created_at, :updated_at
json.url question_url(question, format: :json)
