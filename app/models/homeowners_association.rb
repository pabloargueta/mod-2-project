class HomeownersAssociation < ApplicationRecord
  has_many :homes
  has_many :invoices, through: :homes
  has_many :payments, through: :homes
end
