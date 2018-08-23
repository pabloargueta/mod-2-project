class InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_invoice

  def index
  end 
  
  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.date_created = Time.now
    @invoice.is_paid = false
    @invoice.total_outstanding = @invoice.total_due
    @invoice.save
    
    redirect_to @invoice
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
  
  def invoice_params
    params.require(:invoice).permit(:user_id, :total_due, :description)
  end
end
