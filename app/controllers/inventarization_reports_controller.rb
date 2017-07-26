class InventarizationReportsController < ApplicationController
  def create
    @facility = Facility.find params[:facility_id]
    @inv = @facility.storage_inventarizations.new(inv_params)
    @inv.save!
  end

  private
    def inv_params
      params.require(:storage_inventarization_report).permit(
      	:status, 
        inventory_attributes:   [:id, :_destroy, :title, :amount, :kind],
        equipment_attributes:   [:id, :_destroy, :title, :amount, :kind, :owner],
        consumables_attributes: [:id, :_destroy, :title, :amount, :pack_form],
        chem_consums_attributes:[:id, :_destroy, :title, :amount, :pack_form, :ph_rate, :purpose, :additional_info],
      )
    end
end
