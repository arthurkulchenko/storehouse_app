class StorehouseApplicationsController < ApplicationController

  def index
    @applications = Storage::SupplyApplication.bunch_per_month(2)
  end

  def update
    Storage::SupplyApplication.update(application_params)
  end

  private

    def application_params
      params.require(:supply_application).permit(:status)
    end
end
