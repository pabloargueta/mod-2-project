class HomeOwner < ApplicationRecord
  belongs_to :homeowners_association
  has_many :payments
  has_many :invoices
  has_many :invoice_categories, through: :invoices
end
