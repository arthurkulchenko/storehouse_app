class StorehouseApplicationsController < ApplicationController

  def index
    @applications = Storage::SupplyApplication.bunch_per_month(2)
  end

  def update
    Storage::SupplyApplication.update(application_params)
  end

  private

    def application_params
      params.require(:supply_application).permit(
        :status, 
        # consumables_attributes:[:id, :_destroy, :title, :pack_form, :amount],
        # chem_consums_attributes:[:id, :_destroy, :title, :pack_form, :amount, :ph_rate, :purpose, :additional_info],
        # inventory_attributes:[:id, :_destroy, :title, :amount, :kind],
        # equipment_attributes:[:id, :_destroy, :title, :amount, :kind, :owner],
        )
    end
end
