json.extract! user, :id, :name, :age, :email, :adharno, :panno, :mobileno, :created_at, :updated_at
json.url user_url(user, format: :json)
