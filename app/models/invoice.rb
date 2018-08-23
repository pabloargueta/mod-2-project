class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :payments

  def update_all_invoice_info(payment_amount)
    balance = self.user.account_balance += payment_amount
    self.user.update(account_balance:balance)
    
    if self.total_due > payment_amount
      self.update(total_outstanding: self.total_due - payment_amount)
    elsif total_due == payment_amount
      self.toggle_paid_status
      self.update(total_outstanding: 0)
    elsif self.total_due < payment_amount
      self.toggle_paid_status
      self.update(total_outstanding: 0)
    else
      puts "ERROR: PAYMENT AMOUNT NOT APPLIED CORRECTLY"
    end
  end

  def toggle_paid_status
    !self.is_paid
  end
  
  def title
    "#{self.date_created.strftime("%m/%d/%Y")} - #{self.category.name.capitalize} Invoice "
  end
end
