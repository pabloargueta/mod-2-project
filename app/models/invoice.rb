class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :payments

  def update_invoice(payment_amount)
    self.update_user_balance(payment_amount)
    self.update_outstanding_amount(payment_amount)
    self.update_hoa_balance(payment_amount)

    if payment_amount >= self.total_outstanding
      self.is_paid = true
    end
  end

  def update_user_balance(payment_amount)
    balance = self.user.account_balance += payment_amount
    self.user.update(account_balance: balance)
  end
  
  def update_hoa_balance(payment_amount)
    balance = self.user.hoa.total_paid += payment_amount
    self.user.hoa.update(total_paid: balance)
  end

  def update_outstanding_amount(payment_amount)
    self.update(total_outstanding: [self.total_due - payment_amount, 0].max)
  end

  def title
    "#{self.formatted_created_date} - #{self.category.name.capitalize} Invoice "
  end

  def formatted_created_date
    self.created_at.strftime("%m/%d/%Y")
  end
  # note: ask josh how would refactor formatted_date to all classes. similar method in post model

  def total_paid
    self.total_owed - self.total_outstanding
  end

  def self.create_invoice(params)
    invoice = Invoice.new(params)
    invoice.is_paid = false
    invoice.total_outstanding = invoice.total_due

    balance = invoice.user.account_balance -= invoice.total_outstanding
    invoice.user.update(account_balance: balance)
    balance = invoice.user.hoa.total_owed += invoice.total_outstanding
    invoice.user.hoa.update(total_owed: balance)

    invoice.save
    return invoice
  end
end
