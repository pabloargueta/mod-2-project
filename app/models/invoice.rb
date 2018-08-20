class Invoice < ApplicationRecord
  belongs_to :home
  belongs_to :invoice_category
  has_many :payments
end
