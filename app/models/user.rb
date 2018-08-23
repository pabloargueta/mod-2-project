class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  
  belongs_to :homeowners_association
  has_many :payments
  has_many :invoices
  has_many :invoice_categories, through: :invoices
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def hoa 
    self.homeowners_association
  end
end
