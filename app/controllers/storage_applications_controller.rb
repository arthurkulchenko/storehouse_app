class StorageApplicationsController < ApplicationController
  
  def create
    Storage::SupplyApplication.create(storage_params)	
  end

  private

    def storage_params
      params.require(:storage_supply_application).permit(
      	:status, 
        inventory_attributes:   [:id, :_destroy, :title, :amount, :kind],
        equipment_attributes:   [:id, :_destroy, :title, :amount, :kind, :owner],
        consumables_attributes: [:id, :_destroy, :title, :amount, :pack_form],
        chem_consums_attributes:[:id, :_destroy, :title, :amount, :pack_form, :ph_rate, :purpose, :additional_info],
      )
    end

end
