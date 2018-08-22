class HomeOwnersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_homeowner

  def home
    @user = current_user  
  end
  
  def new
    @homeowners_associations = HomeownersAssociation.all
  end

  def create
    @home_owner = HomeOwner.create(homeowner_params)
    @home_owner.homeowners_association_id 
    redirect to '/home' # NEED TO REDIRECT OR LOG THEM IN
  end

  def show
    
  end

  private

  def load_homeowner

    if params[:id]
      @home_owner = HomeOwner.find(params[:id])
    else
      @home_owner = HomeOwner.new
    end
  end

  def homeowner_params
    require(:home_owner).permit(:address)
  end
end
