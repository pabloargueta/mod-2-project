class HomeownersAssociation < ApplicationRecord
  has_many :users
  has_many :invoices, through: :users
  has_many :payments, through: :users
end
