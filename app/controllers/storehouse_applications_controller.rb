class StorehouseApplicationsController < ApplicationController
  before_action :load_storehouse_application, only: [:update, :destroy]
  
  def index
    @applications = Storage::Application.bunch_per_month(3)
  end
  
  def create
    @applicaton.create storehouse_applications_params
  end
  
  def update
    @applicaton.update storehouse_applications_params
  end
  
  private

    def load_storehouse_application
      @applicaton = Storage::Application.find parmas[:id]
    end

    def storehouse_applications_params
      params.require(class_eval("Storage::Application")).permit(:status)
    end
end
