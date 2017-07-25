class StorehouseApplicationsController < ApplicationController
  
  def index
    @applications = Storage::SupplyApplication.bunch_per_month(3)
  end
  
  def update
    Storage::SupplyApplication.find(parmas[:id]).update(storehouse_applications_params)
  end
  
  private

    def storehouse_applications_params
      params.require(class_eval("Storage::SupplyApplication")).permit(:status)
    end
end
