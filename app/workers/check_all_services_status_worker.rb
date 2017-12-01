class CheckAllServicesStatusWorker
  include Sidekiq::Worker

  def perform
    Service.all.each do |service|
      CheckServiceStatusWorker.perform_async(service.id)
    end
  end
end
