class FacilitiesController < ApplicationController
  before_action :facility_load, only: [:show, :edit, :update, :delete]

  respond_to :html #, :json
  
  def index
    respond_with(@facilities = Facility.all)
  end

  def new
    @facility = Facility.new(facilities_params)
    respond_with @facility
  end

  def create	
    @facility = Facility.new(facilities_params)
    respond_with @facility
  end

  def show
  end

  def edit
  end

  def update
    respond_with(@facility.update(facilities_params))
  end

  def destroy
    @facility.delete
  end

  private

    def facility_load
      @facility = Facility.find params[:id]
    end

    def facilities_params
      require(:facility).permit(:name, :supervisor, :address, :manager)
    end
end
