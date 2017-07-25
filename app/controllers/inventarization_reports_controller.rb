class InventarizationReportsController < ApplicationController
  def create
    @write_off = Storage::InventarizationReport.new(inv_params)
    @write_off.facility = params[:facility_id]
    @write_off.save
  end

  private
    def inv_params
      params.require(class_eval("Storage::InventarizationReport")).permit()
    end
end
