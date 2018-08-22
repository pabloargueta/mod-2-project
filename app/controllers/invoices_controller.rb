class InvoicesController < ApplicationController
  before_action :load_invoice

  def new
    @homeowners_associations = HomeownersAssociation.all
    # ^^ ALSO NEED TO FILTER HOMEOWNERS BASED ON SELF (HOA)

    @home_owners = HomeOwner.all
    @categories = Category.all
    # Need to add category
  end

  def create
    byebug
    @invoice = Invoice.new(invoice_params)
    @invoice.date_created = Time.now
    @invoice.is_paid = false
    @invoice.total_outstanding = @invoice.total_due
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
    params.require(:invoice).permit(:home_owner_id, :total_due, :description)
  end

end
