class Invoice < ApplicationRecord
  belongs_to :home_owner
  belongs_to :invoice_category
  has_many :payments
end
