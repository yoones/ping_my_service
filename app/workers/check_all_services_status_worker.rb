class CheckAllServicesStatusWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    # Rails.logger.debug "YYYYYYYYYYYYY sidekiq job running for :all"
    Service.all.each do |service|
      CheckServiceStatusWorker.perform_async(service.id)
    end
  end
end
