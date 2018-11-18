json.extract! state, :id, :temperature, :humidity, :air_quality, :smoke, :rgb_1, :rbg_2, :count, :stepper_1, :stepper_2, :servo_1, :servo_2, :servo_3, :created_at, :updated_at
json.url state_url(state, format: :json)
