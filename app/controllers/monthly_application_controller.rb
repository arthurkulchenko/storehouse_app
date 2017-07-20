class MonthlyApplicationController < ApplicationController
  def index
    @applications = Storage::Application.bunch_per_month(1).where(status: "approved")
  end
end
