class Payment < ApplicationRecord
  belongs_to :invoice
  belongs_to :home_owner
end
