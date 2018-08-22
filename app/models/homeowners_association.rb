class HomeownersAssociation < ApplicationRecord
  has_many :home_owners
  has_many :invoices, through: :home_owners
  has_many :payments, through: :home_owners
end
