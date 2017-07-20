class FacilitiesController < ApplicationController
  before_action :facility_load, only: [:show, :update, :destroy]
  
  def index
    @facilities = Facility.all
  end

  def create
    Facility.create facilities_params 
    # TODO posting new facility
  end

  def show
  end

  def update
  	@facility.update facilities_params
  end

  def destroy
  	@facility.destroy
  end

  private

    def facility_load
      @facility = Facility.find params[:id]
    end
  
    def facilities_params
      params.require(:facility).permit(:title, :supervisor, :address, :manager)
    end
end
