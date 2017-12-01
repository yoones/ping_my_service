class ServicesController < ApplicationController
  expose :services, ->{ Service.all }
  expose :service, decorate: ->(service){ ServiceDecorator.new(service) }
  expose :status_check, -> { service.status_checks.new }

  def create
    if service.save
      redirect_to service, notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  def update
    if service.update(service_params)
      redirect_to service, notice: 'Service was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    service.destroy
    redirect_to services_url, notice: 'Service was successfully destroyed.'
  end

  private

  def service_params
    params.require(:service).permit(:name, :url)
  end
end
