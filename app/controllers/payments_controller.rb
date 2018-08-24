class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_payments

  def new
    @invoices_list = Invoice.all.select{|invoice| invoice.user == current_user}
  end

  def create
    Payment.create_payment(payment_params)

    redirect_to users_path(current_user)
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
    params.require(:payment).permit(:payment_amount, :invoice_id)
  end
end
