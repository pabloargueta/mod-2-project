class Admin::InvoicesController < Admin::ApplicationController
  before_action :load_invoice
  
  def new
    @users = User.all.select {|user| !user.is_admin && user.hoa == current_user.hoa} 
    
    @categories = Category.all

  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.date_created = Time.now
    @invoice.is_paid = false
    @invoice.total_outstanding = @invoice.total_due
    
    @invoice.user.account_balance -= @invoice.total_outstanding
    # note: need account_balance logic to be updated when ANY invoice created in seed data
    
    @invoice.save
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
