class Admin::InvoicesController < Admin::ApplicationController
  before_action :load_invoice

  def new
    @users = User.all.select {|user| !user.is_admin && user.hoa == current_user.hoa}

    @categories = Category.all

  end

  def create
    invoice = Invoice.create_invoice(invoice_params)
    
    redirect_to invoice
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
    params.require(:invoice).permit(:user_id, :total_due, :description, :category_id)
  end
end
