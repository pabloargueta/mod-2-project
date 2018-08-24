class Payment < ApplicationRecord
  belongs_to :invoice
  belongs_to :user

  def self.create_payment(params)
    payment = Payment.new(params)
    payment.user = payment.invoice.user

    payment.invoice.update_invoice(payment.payment_amount)

    payment.save
  end
end
