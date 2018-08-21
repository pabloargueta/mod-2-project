class HomeownersAssociationsController < ApplicationController

  # before_action :set_hoa, only: []
  def index
    @homeowners_associations = HomeownersAssociation.all
  end

  def new
    @homeowners_association = HomeownersAssociation.new
  end

  def create
    if @homeowners_association = HomeownersAssociation.new(homeowners_association_params)
      
      @homeowners_association.save

      redirect_to @homeowners_association
    else

      render :new
    end
  end

  private

  def set_hoa
    @homeowners_association = HomeownersAssociation.find(params[:id])
  end

  def homeowners_association_params
 
    params.require(:homeowners_association).permit(:name)
  end

end
