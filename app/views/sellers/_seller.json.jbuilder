json.extract! seller, :id, :company_name, :address, :email, :phone_number, :zip_code, :products_accepted, :type_of_repair, :created_at, :updated_at
json.url seller_url(seller, format: :json)
