class Post < ApplicationRecord
  belongs_to :user
  
  def formatted_created_date
    self.created_at.strftime("%m/%d - %H:%M")
  end
end