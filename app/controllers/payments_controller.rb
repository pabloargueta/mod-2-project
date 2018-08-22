class PaymentsController < ApplicationController
  before_action :load_payments

  def new
    @invoices_list = Invoice.all
    # ^ filter invoices where user.id = session_user.id
  end

  def create
    payment = Payment.new(payment_params)
    payment.date_paid = Time.now
    payment.user_id = "Test" #NEED TO UPDATE FOR SELF

    invoice = payment.invoice
    invoice.update_all_invoice_info

    payment.save
  end

  private

  def load_payments
    if params[:id]
      @payment = Payment.find(params[:id])
    else
      @payment = Payment.new
    end
  end

  def payment_params
    require(:payment).permit(:invoice_id)
  end
end
