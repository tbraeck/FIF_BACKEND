class Seller < ApplicationRecord
    has_many :accepted_products, dependent: :destroy
    # has_many :services
    # has_many :frees
    # has_many :communities
    
    # has_secure_password

    # validates :username, presence: true, uniqueness: true
    # validates :password, length: { minimum: 6 }
end
