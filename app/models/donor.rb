class Donor < ApplicationRecord
    has_many: products_accepted, dependent: :destroy
end
