class HomeownersAssociation < ApplicationRecord
  has_many :users
  has_many :invoices, through: :users
  has_many :payments, through: :users
  
  def total_owed_by_all_hoa_users
    # Invoice.all.reduce(0) do |total, current_invoice|
    #   byebug
    #   if current_invoice.user.hoa == self
    #     total += current_invoice.total_outstanding
    #   end
    # end
    total = 0
    Invoice.all.each do |invoice|
      if invoice.user.hoa == self
        total += invoice.total_due
      end
    end
    total
  end
  
  def total_paid_by_all_hoa_users
    total = 0
    Payment.all.each do |payment|
      if payment.invoice.user.hoa == self
        total += payment.payment_amount
      end 
    end
    total
  end
  
  def total_outstanding_by_all_hoa_users
    total = 0
    Invoice.all.each do |invoice|
      if invoice.user.hoa == self
        total += invoice.total_outstanding
      end
    end
    total
  end
end
