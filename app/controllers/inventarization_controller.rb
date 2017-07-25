class InventarizationController < ApplicationController
  def create
    @write_off = Storage::WriteOff.new(write_off_params)
    @write_off.facility = params[:facility_id]
    @write_off.save
  end

  private
    def write_off_params
      params.require(class_eval("Storage::WriteOff")).permit()
    end
end
