json.extract! status_check, :id, :service_id, :name, :selector, :expected_value, :created_at, :updated_at
json.url status_check_url(status_check, format: :json)
