class CheckServiceStatusWorker
  include Sidekiq::Worker

  def perform(service_id)
    service = Service.find_by_id(service_id)
    CheckServiceStatus.new(service).call if service
  end
end
