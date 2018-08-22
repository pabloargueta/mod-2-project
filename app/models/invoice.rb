class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :invoice_category
  has_many :payments

  def update_all_invoice_info(payment_amount)
    if self.total_due > payment_amount
      self.total_outstanding = self.total_due - payment_amount
    elsif total_due == payment_amount
      self.toggle_paid_status
      self.total_outstanding = 0
    elsif self.total_due < payment_amount
      # Update balance logic for home_owner model
      self.toggle_paid_status
      self.total_outstanding = 0
    else
      puts "ERROR: PAYMENT AMOUNT NOT APPLIED CORRECTLY"
    end
  end

  def toggle_paid_status
    !self.paid
  end
end
