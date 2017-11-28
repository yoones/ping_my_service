class StatusChecksController < ApplicationController
  expose :status_checks, ->{ StatusCheck.all }
  expose :status_check, decorate: ->(status_check){ StatusCheckDecorator.new(status_check) }
  expose :service, -> { status_check.try(:service) || Service.new }

  def create
    if status_check.save
      redirect_to status_check, notice: 'Status check was successfully created.'
    else
      render :new
    end
  end

  def update
    if status_check.update(status_check_params)
      redirect_to status_check, notice: 'Status check was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    status_check.destroy
    redirect_to status_checks_url, notice: 'Status check was successfully destroyed.'
  end

  private

  def status_check_params
    params.require(:status_check).permit(:service_id, :name, :selector, :expected_value)
  end
end
