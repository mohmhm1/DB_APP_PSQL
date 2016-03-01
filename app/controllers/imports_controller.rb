class ImportsController < ApplicationController
def index
  	 @inventories = Inventory.all
  end

  def import
  	Inventory.import(params[:file])
    redirect_to root_url, notice: "List Imported"
  end
end