class StorehouseApplicationController < ApplicationController
  
  def create
    @application = Storage::SupplyApplication.new(storehouse_applications_params)
    @application.facility = params[:facility_id]
    @application.save!
  end

  private

    def storehouse_applications_params
      params.require(class_eval("Storage::SupplyApplication")).permit(:status)
    end
end
