class InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_invoice
  before_action :verify_invoice_permissions, only: [:show]

  def index
    all_invoices = Invoice.where(user: current_user).order("created_at")
    @paid_invoices = all_invoices.select {|invoice| invoice.is_paid}
    @unpaid_invoices = all_invoices - @paid_invoices
  end

  def show
  end

  private

  def load_invoice
    if params[:id]
      @invoice = Invoice.find(params[:id])
    else
      @invoice = Invoice.new
    end
  end

  def verify_invoice_permissions
    if !current_user.is_admin && @invoice.user != current_user
      # note: need to flash not authorized to view invoice
      redirect_to users_path
    end
  end

  def invoice_params
    params.require(:invoice).permit(:user_id, :total_due, :description)
  end
end
