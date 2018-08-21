class Payment < ApplicationRecord
  belongs_to :invoice
  belongs_to :home
end
