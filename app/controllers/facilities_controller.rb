class FacilitiesController < ApplicationController
  before_action :facility_load, only: [:show, :update, :destroy]
  
  def index
    respond_with(@facilities = Facility.all)
  end

  def create
    @facility = Facility.create(facility_params)
    respond_with @facility do |format|
      if @facility.errors.any?
        format.js { render json: @facility.errors.full_messages, status: 422 }
        format.json { render json: @facility.errors.full_messages, status: 422 }
      else
        format.js { render nothing: true }
        format.json { render json: @facility }
      end
    end
    # TODO posting new facility
  end

  def show
  end

  def update
  	@facility.update facility_params
  end

  def destroy
  	@facility.destroy
  end

  private

    def facility_load
      @facility = Facility.find params[:id]
    end
  
    def facility_params
      params.require(:facility).permit(:title, :supervisor, :address, :manager)
    end
end
