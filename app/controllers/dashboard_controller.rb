class DashboardController < ApplicationController
  expose :services, -> { Service.all } # todo : .includes(:status_checks)
  expose :service, -> { Service.new }

  def index
  end
end
