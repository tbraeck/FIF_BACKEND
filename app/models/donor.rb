class Donor < ApplicationRecord
    has_many :products, dependent: :destroy
  end
  