json.extract! state, :id, :temp, :hum, :air, :smk, :rgb1, :rbg2, :c, :st1, :st2, :s1, :s2, :s3, :created_at, :updated_at
json.url state_url(state, format: :json)
